
/* This query loads all cycleways and related
Cycleways for which a width is known, are shown in green
Cycleways for which no width is known, are shown in red
*/ 

[out:json][timeout:25];
(
  way["highway"="cycleway"]({{bbox}});
  way["cycleway:left"]({{bbox}});
  way["cycleway:right"]({{bbox}});
  way["cycleway"]["cycleway"!="no"]["cycleway"!="opposite"]({{bbox}});
);
out body;
>;
out skel qt;


{{style:
node, way, area
{ color:red; fill-color:red; }

way[width][highway=cycleway]
{ color:green; fill-color:green; text: width }

way[cycleway:width]
{ color:green; fill-color:green; text: cycleway:width }

way[cycleway:left:width]
{ color:green; fill-color:green; text: cycleway:left:width }

way[cycleway:right:width]
{ color:green; fill-color:green; text: cycleway:right:width }


}}

