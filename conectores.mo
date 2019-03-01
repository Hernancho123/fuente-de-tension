within fuentedetension;

package conectores
  connector pines
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Diagram,
      Icon(graphics = {Ellipse(origin = {-1, 2}, lineColor = {0, 0, 255}, fillColor = {85, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-91, 90}, {91, -90}}, endAngle = 360), Bitmap(extent = {{-44, 46}, {-44, 46}})}, coordinateSystem(initialScale = 0.1)));
  end pines;

  connector pinpositivo
  Modelica.SIunits.Voltage v "Electric Potential";
        flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(fillColor = {0, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-20, 80}, {20, -80}}), Rectangle(origin = {2, 0}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Solid, extent = {{-82, 20}, {78, -20}})}));
  end pinpositivo;

  connector pinnegativo
   Modelica.SIunits.Voltage v "Electric Potential";
        flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-80, 20}, {80, -20}})}));
  end pinnegativo;

  partial model fuente
  Modelica.SIunits.Voltage v;
      Modelica.SIunits.Current i;
    fuentedetension.conectores.pinpositivo pinpositivo1 annotation(
      Placement(visible = true, transformation(origin = {-86, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-88, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    fuentedetension.conectores.pinnegativo pinnegativo1 annotation(
      Placement(visible = true, transformation(origin = {84, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
   equation
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
  annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {3, -1}, extent = {{-87, 89}, {87, -89}}, endAngle = 360)}));
  end fuente;
end conectores;
