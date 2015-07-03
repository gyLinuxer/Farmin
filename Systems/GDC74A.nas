#
#  GDC47A
#
# Spec
# Aircraft Pressure Altitude Range -1400 feed to 50000 feet
# Aircraft Vertical Speed Range  -20000 feet/min to 20000 feet/min
# Aircraft Airspeed Range 450K nots
# Aircraft Mach Range <1.00 Mach
# Aircraft TAT Temperature Range -85°C to +85°C
# Unit Operating Temperature Range -55°C to +70°C
# Power Requirments
# +70°C  27.5Vdc 200 mA, 13.8Vdc 410mA
# +25°C  27.5Vdc 200 mA, 13.8Vdc 410mA
# -55°C  27.5Vdc 235 mA, 13.8Vdc 480mA



var GDC47A {
    new: func(module=0)
    {
        var m = { parents: [GDC47A] };
		m.module = module;
		props.globals.initNode('/systems/GDC47A['~m.module~']/OAT',0,'DOUBLE');
		props.globals.initNode('/systems/GDC47A['~m.module~']/OAT',0,'DOUBLE');
        props.globals.initNode('/systems/GDC47A['~m.module~']/OAT',0,'DOUBLE');
        props.globals.initNode('/systems/GDC47A['~m.module~']/OAT',0,'DOUBLE');
        props.globals.initNode('/systems/GDC47A['~m.module~']/OAT',0,'DOUBLE');
        props.globals.initNode('/systems/GDC47A['~m.module~']/serviceable', 1, "BOOL");
		props.globals.initNode('/systems/GDC47A['~m.module~']/operable', 0, "BOOL");
		m.smooth = smooth.new(30);
		return m;
    },
    update: func()
    {

    },
    watchdog: func()
    {

    },
    offLine: func()
    {

    },
    run: func()
    {

    },
};
