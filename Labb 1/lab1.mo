model lab1
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-2, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 3.39e-3)  annotation(
    Placement(visible = true, transformation(origin = {18, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistorI(R = 0.8)  annotation(
    Placement(visible = true, transformation(origin = {-12, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistorR(R = 0.35)  annotation(
    Placement(visible = true, transformation(origin = {-38, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(k = 0.056)  annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 3.88e-5)  annotation(
    Placement(visible = true, transformation(origin = {64, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1.11e-4, phi_rel(displayUnit = "rad"))  annotation(
    Placement(visible = true, transformation(origin = {54, 2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Rotational.Components.Fixed fixed(phi0(displayUnit = "rad"))  annotation(
    Placement(visible = true, transformation(origin = {54, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 10)  annotation(
    Placement(visible = true, transformation(origin = {-62, 2}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(resistorR.n, resistorI.p) annotation(
    Line(points = {{-28, 32}, {-22, 32}}, color = {0, 0, 255}));
  connect(inductor.n, emf.p) annotation(
    Line(points = {{28, 32}, {30, 32}, {30, 10}}, color = {0, 0, 255}));
  connect(damper.flange_b, fixed.flange) annotation(
    Line(points = {{54, -8}, {54, -22}}));
  connect(emf.flange, inertia.flange_a) annotation(
    Line(points = {{40, 0}, {46, 0}, {46, 30}, {54, 30}}));
  connect(emf.n, ground.p) annotation(
    Line(points = {{30, -10}, {28, -10}, {28, -18}, {-2, -18}}, color = {0, 0, 255}));
  connect(damper.flange_a, inertia.flange_a) annotation(
    Line(points = {{54, 12}, {54, 30}}));
  connect(resistorI.n, inductor.p) annotation(
    Line(points = {{-2, 32}, {8, 32}}, color = {0, 0, 255}));
  connect(resistorR.p, stepVoltage.p) annotation(
    Line(points = {{-48, 32}, {-62, 32}, {-62, 12}}, color = {0, 0, 255}));
  connect(ground.p, stepVoltage.n) annotation(
    Line(points = {{-2, -18}, {-62, -18}, {-62, -8}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")),
    Diagram);
end lab1;
