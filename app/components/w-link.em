class WLinkComponent extends Ember.Component
  tagName: 'div'
  classNames: ['link']
  attributeBindings: ['style']
  style: ~>
    s = @param.source.position
    x1 = s.x
    y1 = s.y
    t = @param.target.position
    x2 = t.x
    y2 = t.y
    length = Math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))
    angle  = Math.atan2(y2 - y1, x2 - x1) * 180 / Math.PI
    transform = "rotate(#{ angle }deg)"
    "top: #{ y1 }px; left: #{ x1 }px; width: #{ length }px; -webkit-transform: #{ transform }"

`export default WLinkComponent`
