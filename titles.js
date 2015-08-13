        var width = 960,
            height = 500;

        var color = d3.scale.category10();

        var svg = d3.select("body").append("svg")
            .attr("width", width)
            .attr("height", height);

        var force = d3.layout.force()
            .gravity(.05)
            .distance(200)
            .charge(-100)
            .size([width, height]);

        d3.json("result.json", function (error, json) {
            if (error) throw error;

            force
                .nodes(json.nodes)
                .links(json.links)
                .start();

            var link = svg.selectAll(".link")
                .data(json.links)
              .enter().append("line")
                .attr("class", "link");

            var drag = force.drag()
                .on("dragstart", dragstart);

            var node = svg.selectAll(".node")
                .data(json.nodes)
                .enter().append("g")//.append("circle")
                //.enter().append("circle")
                .attr("class", "node")
                .attr("r", 5)
                .on("dblclick", dblclick)
                .on("click", nodeclick)
                .style("fill", function (d) { return color(d.group); })
                //.style("stroke", function (d) { return color(d.group); })
                .call(drag);

            //node.append("image")
            //    .attr("xlink:href", "https://github.com/favicon.ico")
            //    .attr("x", -8)
            //    .attr("y", -8)
            //    .attr("width", 16)
            //    .attr("height", 16);

            node.append("text")
                .attr("dx", 12)
                .attr("dy", ".35em")
                .text(function (d) { return d.name });
            node.append("circle")
            .attr("class", "node")
                .attr("r", 5)
                .on("dblclick", dblclick)
                .on("click", nodeclick)
                .style("fill", function (d) { return color(d.group); })



            force.on("tick", function () {
                link.attr("x1", function (d) { return d.source.x; })
                    .attr("y1", function (d) { return d.source.y; })
                    .attr("x2", function (d) { return d.target.x; })
                    .attr("y2", function (d) { return d.target.y; });

                node.attr("transform", function (d) { return "translate(" + d.x + "," + d.y + ")"; });
            });

            function dragstart(d) {
                d3.select(this).classed("fixed", d.fixed = true);
            }

            function dblclick(d) {
                d3.select(this).classed("fixed", d.fixed = false);
            }
            
            function nodeclick() {
                var x = d3.select(this);
                //alert(x);
            }
        });

