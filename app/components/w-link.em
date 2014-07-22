class WLinkComponent extends Ember.Component

  tagName: 'div'

  classNames: ['link']

  attributeBindings: ['style']

  +computed source.position.x, source.position.y, source.oHeight, source.oWidth, target.position.x, target.position.y, target.oHeight, target.oWidth
  style: ->

    src = @source
    spos = src.position

    x1 = spos.x
    y1 = spos.y
    w1 = src.oWidth
    h1 = src.oHeight

    trg = @target
    tpos = trg.position

    x2 = tpos.x
    y2 = tpos.y
    w2 = trg.oWidth
    h2 = trg.oHeight

    if (y1+h1)<y2  # on top
      x1 = x1 + w1/2
      x2 = x2 + w2/2
      y1 = y1 + h1

    else if (y2+h2)<y1  # below
      x1 = x1 + w1/2
      x2 = x2 + w2/2
      y2 = y2 + h2

    else if (x1+w1)<x2  # left
      y1 = y1 + h1/2
      y2 = y2 + h2/2
      x1 = x1 + w1 

    else if (x2+w2)<x1  # right
      y1 = y1 + h1/2
      y2 = y2 + h2/2
      x2 = x2 + w2 

    else 
      x1 = x1 + w1/2
      x2 = x2 + w2/2
      y1 = y1 + h1/2
      y2 = y2 + h2/2

    # position is relative to the source element
    x1 -= spos.x
    x2 -= spos.x
    y1 -= spos.y
    y2 -= spos.y

    length = Math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))
    angle  = Math.atan2(y2 - y1, x2 - x1) * 180 / Math.PI
    transform = "rotate(#{ angle }deg)"
    "top: #{ y1 }px; left: #{ x1 }px; width: #{ length }px; -webkit-transform: #{ transform }"

`export default WLinkComponent`
