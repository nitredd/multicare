# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ptJohnDoe = Patient.create name: 'John Doe'
stJohnny = Staff.create name: 'Johnny'
deptPathology = Department.create name: 'Pathology'
splTypeBlood = MatterType.create name: 'Blood'
tstRbc = TestProcedure.create name: 'RBC count', department: deptPathology, matter_type: splTypeBlood
eocOne = Episode.create patient: ptJohnDoe
eocRbcTest = EpisodeTest.create episode: eocOne, test_procedure: tstRbc
