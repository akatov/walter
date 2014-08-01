`import DS from 'ember-data'`

class User extends DS.Model

  name: DS.attr 'string'

  avatar: DS.attr 'string' # Avatar URL

if WalterENV.ENV == 'fixtures'
  User.reopenClass
    FIXTURES: [{
      id: 1
      name: 'Bruno'
      avatar: 'https://pbs.twimg.com/profile_images/378800000516083066/ea020e7822f1a0cd3bde21a0bb444cc7_400x400.jpeg'
    }, {
      id: 2
      title: 'Dmitri'
      avatar: 'https://avatars3.githubusercontent.com/u/1148449?v=1&s=460'
    }]

`export default User`
