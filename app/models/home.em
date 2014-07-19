`import DS from 'ember-data'`

class Home extends DS.Model
  title: DS.attr()
  subtitle: DS.attr()
  buzzwords : DS.attr()

Home.reopenClass
  FIXTURES: [{
    id:1
    title: "walt.io"
    subtitle: "Community and Entreprise Software"
    buzzwords: ["Culture","Productivity"]
  }]

`export default Home`