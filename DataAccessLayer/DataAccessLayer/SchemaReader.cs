using System;
using System.Data.Sql;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class SchemaReader
    {
		string root;
		SqlConnection sqlConnection1 = new SqlConnection("Data Source=.;Initial Catalog=Development;MultipleActiveResultSets=true;Integrated Security=True");
		

		public SchemaReader(string root)
		{
			this.root = root;
		}

		public JsonRelation doshit(){

			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = System.Data.CommandType.Text;
			cmd.Connection = sqlConnection1;
			cmd.CommandText = String.Format(@"select 
									ddt1.TableName as ForeignTable, 
									ddc1.ColumnName as ForeignKey,
									DDT2.TableName as PrimaryTable,
									ddc2.ColumnName as PrimaryKey
								from DDReferences DDR
								join DDReferenceColumns DDRC on DDRC.DDReference = DDR.ID
								join DDTables DDT1 on ddt1.ID = ddr.DDTable
								join DDTables DDT2 on ddt2.ID = ddr.DDTargetTable
								join DDColumns DDC1 on ddc1.ID = ddrc.DDColumn
								join DDColumns DDC2 on ddc2.ID = ddrc.DDTargetColumn
								where ddt1.TableName = '{0}'
								or ddt2.TableName = '{0}'
								order by 1", root);


			SqlDataReader reader;

			sqlConnection1.Open();
			reader = cmd.ExecuteReader();
			// Data is accessible through the DataReader object here.
			//JsonRelation mainData = new JsonRelation("Persons");

			List<Node> nodes = new List<Node>();
			List<Link> links = new List<Link>();

			List<ColumnData> columnDataRoot = doMoreShit(root);
			nodes.Add(new Node { name = root, group = 1, ColumnData = columnDataRoot.ToArray() });
			
			int index = 1;

			//List<Relation> relations = new List<Relation>();

			while (reader.Read())
			{
				if (reader.GetValue(0).ToString() == root)
				{
					List<ColumnData> columnData = doMoreShit(reader.GetValue(2).ToString());
					nodes.Add(new Node() {name = reader.GetValue(2).ToString(), group = 2, ColumnData = columnData.ToArray()});
					links.Add(new Link() { source = 0, target = index });

				}else{
					List<ColumnData> columnData = doMoreShit(reader.GetValue(0).ToString());
					nodes.Add(new Node() { name = reader.GetValue(0).ToString(), group = 3, ColumnData = columnData.ToArray() });
					links.Add(new Link() { source = index, target = 0 });
				}

				index += 1;

				//Relation currentRelation = new Relation();
				//currentRelation.ForeignTable = reader.GetValue(0).ToString();
				//currentRelation.ForeignKey = reader.GetValue(1).ToString();
				//currentRelation.PrimaryTable = reader.GetValue(2).ToString();
				//currentRelation.PrimaryKey = reader.GetValue(3).ToString();

				//relations.Add(currentRelation);
			}

			JsonRelation mainData = new JsonRelation(nodes.ToArray(), links.ToArray());

			sqlConnection1.Close();
			return mainData;
		}

		public List<ColumnData> doMoreShit(string tableName)
		{
			List<ColumnData> columnData = new List<ColumnData>();

			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = System.Data.CommandType.Text;
			cmd.Connection = sqlConnection1;
			cmd.CommandText = String.Format(@"select DDC.ColumnName, EBCPT.typename from DDColumns DDC
											join DDTables DDT on DDC.DDTable = DDT.ID
											join EbcPropTypes EBCPT on EBCPT.PropTypeId = DDC.Domain
											where DDT.TableName = '{0}'
											order by 1", tableName);

			SqlDataReader reader;
			reader = cmd.ExecuteReader();

			while (reader.Read())
			{
				columnData.Add(new ColumnData { Name = reader.GetValue(0).ToString(), Domain = reader.GetValue(1).ToString() });
			}

			return columnData;
		}
		
    }
}
