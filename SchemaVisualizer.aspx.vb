Imports Exact.Web.UI.WebParts.WebPages
Imports DataAccessLayer

Public Class SchemaVisualizer
	Inherits Exact.Web.UI.Page.Base

	Protected Sub Page_Load(sender As Object, e As EventArgs)
		Dim rdr As New SchemaReader(dropdown.SelectedValue.ToString())
		System.IO.File.WriteAllText("D:\CONN_DEV\TwoLinesOfCode\WebApp\Sources\docs\result2.json", rdr.JustDoIt().ToJSON())
	End Sub

End Class

