class WLinkComponent extends Ember.Component

  tagName: 'div'

  classNames: ['link']

  attributeBindings: ['style']

  style: ~>

    x1 = @param.x1
    y1 = @param.y1
    w1 = @param.w1
    h1 = @param.h1

    x2 = @param.x2
    y2 = @param.y2
    w2 = @param.w2
    h2 = @param.h2

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

    length = Math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))
    angle  = Math.atan2(y2 - y1, x2 - x1) * 180 / Math.PI
    transform = "rotate(#{ angle }deg)"
    "top: #{ y1 }px; left: #{ x1 }px; width: #{ length }px; -webkit-transform: #{ transform }"

`export default WLinkComponent`
