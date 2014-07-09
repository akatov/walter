class WLinkComponent extends Ember.Component
  tagName: 'div'
  classNames: ['link']
  attributeBindings: ['style']
  style: ~>
    src = @param.source
    spos = src.position
    x1 = spos.x    
    y1 = spos.y
    trg = @param.target
    tpos = trg.position
    x2 = tpos.x
    y2 = tpos.y
    length = Math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))
    angle  = Math.atan2(y2 - y1, x2 - x1) * 180 / Math.PI
    transform = "rotate(#{ angle }deg)"
    "top: #{ y1 }px; left: #{ x1 }px; width: #{ length }px; -webkit-transform: #{ transform }"

`export default WLinkComponent`
