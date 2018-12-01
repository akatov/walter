class WAvatarComponent extends Ember.Component

  tagName: "img"

  classNames: ['avatar']

  attributeBindings: ['src','alt']

  classNameBindings: ['size']

  src: ~> @user?.avatar

  alt: ~> @user?.name+" "+@size

  # size: ~> @size

`export default WAvatarComponent`
