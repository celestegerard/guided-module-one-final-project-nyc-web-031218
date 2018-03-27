lyla = Student.create(name: "Lyla")
igor = Student.create(name: "Igor")
todd = Student.create(name: "Todd")
jesse = Student.create(name: "Jesse")
gordon = Student.create(name: "Gordon")
poppy = Student.create(name: "Poppy")
olivia = Student.create(name: "Olivia")
heathcliff = Student.create(name: "Heathcliff")
maurice = Student.create(name: "Maurice")
clemence = Student.create(name: "Clemence")

pork = Taco.create(kind: "Pork")
spicy = Taco.create(kind: "Spicy")
hawaiian = Taco.create(kind: "Hawaiian")
chorizo = Taco.create(kind: "Chorizo")
barbacoa = Taco.create(kind: "Barbacoa")
al_pastor = Taco.create(kind: "Al Pastor")
pescado = Taco.create(kind: "Pescado")
veggie = Taco.create(kind: "Veggie")
black_bean = Taco.create(kind: "Black Bean")
chili = Taco.create(kind: "Chili")


clemence.tacos << chili
jesse.tacos << pork
lyla.tacos << chili
jesse.tacos << barbacoa
jesse.tacos << veggie
lyla.tacos << chili
lyla.tacos << al_pastor
gordon.tacos << hawaiian
gordon.tacos << pescado
gordon.tacos << chorizo
poppy.tacos << veggie
poppy.tacos << spicy
poppy.tacos << barbacoa
olivia.tacos << pork
olivia.tacos << pescado
olivia.tacos << black_bean
clemence.tacos << chorizo
clemence.tacos << barbacoa
#
# veggie.students << olivia
# pescado.students << jesse
# hawaiian.students << gordon
# spicy.students << heathcliff
# spicy.students << poppy
# pescado.students << lyla

# greased_lightning = TacoTruck.create(name: "Greased Lightening")
# iced_earth = TacoTruck.create(name: "Iced Earth Tacos")
# blue_thunder = TacoTruck.create(name: "Blue Thunder")
# teddy_tacos = TacoTruck.create(name: "Teddy's Tacos")
# juans_tacos = TacoTruck.create(name: "Juan's Tacos")
# rodrigos_tacos = TacoTruck.create(name: "Rodrigo's Tacos")
# pedros_tacos = TacoTruck.create(name: "Pedro's Tacos")
# alejandros_tacos = TacoTruck.create(name: "Alejandro's Tacos")
# cuban_b =
