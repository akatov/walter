mixin Board
  title: (k, v) ~>
    @contents = v if v
    @contents

`export default Board`
