extension vec2 {
    var xx: vec2 { vec2(x, x) }
    var xy: vec2 { vec2(x, y) }
    var yx: vec2 { vec2(y, x) }
    var yy: vec2 { vec2(y, y) }

    var xxx: vec3 { vec3(x, x, x) }
    var xxy: vec3 { vec3(x, x, y) }
    var xyx: vec3 { vec3(x, y, x) }
    var xyy: vec3 { vec3(x, y, y) }
    var yxx: vec3 { vec3(y, x, x) }
    var yxy: vec3 { vec3(y, x, y) }
    var yyx: vec3 { vec3(y, y, x) }
    var yyy: vec3 { vec3(y, y, y) }

    var xxxx: vec4 { vec4(x, x, x, x) }
    var xxxy: vec4 { vec4(x, x, x, y) }
    var xxyx: vec4 { vec4(x, x, y, x) }
    var xxyy: vec4 { vec4(x, x, y, y) }
    var xyxx: vec4 { vec4(x, y, x, x) }
    var xyxy: vec4 { vec4(x, y, x, y) }
    var xyyx: vec4 { vec4(x, y, y, x) }
    var xyyy: vec4 { vec4(x, y, y, y) }
    var yxxx: vec4 { vec4(y, x, x, x) }
    var yxxy: vec4 { vec4(y, x, x, y) }
    var yxyx: vec4 { vec4(y, x, y, x) }
    var yxyy: vec4 { vec4(y, x, y, y) }
    var yyxx: vec4 { vec4(y, y, x, x) }
    var yyxy: vec4 { vec4(y, y, x, y) }
    var yyyx: vec4 { vec4(y, y, y, x) }
    var yyyy: vec4 { vec4(y, y, y, y) }
}

extension vec3 {
    var xx: vec2 { vec2(x, x) }
    var xy: vec2 { vec2(x, y) }
    var xz: vec2 { vec2(x, z) }
    var yx: vec2 { vec2(y, x) }
    var yy: vec2 { vec2(y, y) }
    var yz: vec2 { vec2(y, z) }
    var zx: vec2 { vec2(z, x) }
    var zy: vec2 { vec2(z, y) }
    var zz: vec2 { vec2(z, z) }

    var xxx: vec3 { vec3(x, x, x) }
    var xxy: vec3 { vec3(x, x, y) }
    var xxz: vec3 { vec3(x, x, z) }
    var xyx: vec3 { vec3(x, y, x) }
    var xyy: vec3 { vec3(x, y, y) }
    var xyz: vec3 { vec3(x, y, z) }
    var xzx: vec3 { vec3(x, z, x) }
    var xzy: vec3 { vec3(x, z, y) }
    var xzz: vec3 { vec3(x, z, z) }
    var yxx: vec3 { vec3(y, x, x) }
    var yxy: vec3 { vec3(y, x, y) }
    var yxz: vec3 { vec3(y, x, z) }
    var yyx: vec3 { vec3(y, y, x) }
    var yyy: vec3 { vec3(y, y, y) }
    var yyz: vec3 { vec3(y, y, z) }
    var yzx: vec3 { vec3(y, z, x) }
    var yzy: vec3 { vec3(y, z, y) }
    var yzz: vec3 { vec3(y, z, z) }
    var zxx: vec3 { vec3(z, x, x) }
    var zxy: vec3 { vec3(z, x, y) }
    var zxz: vec3 { vec3(z, x, z) }
    var zyx: vec3 { vec3(z, y, x) }
    var zyy: vec3 { vec3(z, y, y) }
    var zyz: vec3 { vec3(z, y, z) }
    var zzx: vec3 { vec3(z, z, x) }
    var zzy: vec3 { vec3(z, z, y) }
    var zzz: vec3 { vec3(z, z, z) }

    var xxxx: vec4 { vec4(x, x, x, x) }
    var xxxy: vec4 { vec4(x, x, x, y) }
    var xxxz: vec4 { vec4(x, x, x, z) }
    var xxyx: vec4 { vec4(x, x, y, x) }
    var xxyy: vec4 { vec4(x, x, y, y) }
    var xxyz: vec4 { vec4(x, x, y, z) }
    var xxzx: vec4 { vec4(x, x, z, x) }
    var xxzy: vec4 { vec4(x, x, z, y) }
    var xxzz: vec4 { vec4(x, x, z, z) }
    var xyxx: vec4 { vec4(x, y, x, x) }
    var xyxy: vec4 { vec4(x, y, x, y) }
    var xyxz: vec4 { vec4(x, y, x, z) }
    var xyyx: vec4 { vec4(x, y, y, x) }
    var xyyy: vec4 { vec4(x, y, y, y) }
    var xyyz: vec4 { vec4(x, y, y, z) }
    var xyzx: vec4 { vec4(x, y, z, x) }
    var xyzy: vec4 { vec4(x, y, z, y) }
    var xyzz: vec4 { vec4(x, y, z, z) }
    var xzxx: vec4 { vec4(x, z, x, x) }
    var xzxy: vec4 { vec4(x, z, x, y) }
    var xzxz: vec4 { vec4(x, z, x, z) }
    var xzyx: vec4 { vec4(x, z, y, x) }
    var xzyy: vec4 { vec4(x, z, y, y) }
    var xzyz: vec4 { vec4(x, z, y, z) }
    var xzzx: vec4 { vec4(x, z, z, x) }
    var xzzy: vec4 { vec4(x, z, z, y) }
    var xzzz: vec4 { vec4(x, z, z, z) }
    var yxxx: vec4 { vec4(y, x, x, x) }
    var yxxy: vec4 { vec4(y, x, x, y) }
    var yxxz: vec4 { vec4(y, x, x, z) }
    var yxyx: vec4 { vec4(y, x, y, x) }
    var yxyy: vec4 { vec4(y, x, y, y) }
    var yxyz: vec4 { vec4(y, x, y, z) }
    var yxzx: vec4 { vec4(y, x, z, x) }
    var yxzy: vec4 { vec4(y, x, z, y) }
    var yxzz: vec4 { vec4(y, x, z, z) }
    var yyxx: vec4 { vec4(y, y, x, x) }
    var yyxy: vec4 { vec4(y, y, x, y) }
    var yyxz: vec4 { vec4(y, y, x, z) }
    var yyyx: vec4 { vec4(y, y, y, x) }
    var yyyy: vec4 { vec4(y, y, y, y) }
    var yyyz: vec4 { vec4(y, y, y, z) }
    var yyzx: vec4 { vec4(y, y, z, x) }
    var yyzy: vec4 { vec4(y, y, z, y) }
    var yyzz: vec4 { vec4(y, y, z, z) }
    var yzxx: vec4 { vec4(y, z, x, x) }
    var yzxy: vec4 { vec4(y, z, x, y) }
    var yzxz: vec4 { vec4(y, z, x, z) }
    var yzyx: vec4 { vec4(y, z, y, x) }
    var yzyy: vec4 { vec4(y, z, y, y) }
    var yzyz: vec4 { vec4(y, z, y, z) }
    var yzzx: vec4 { vec4(y, z, z, x) }
    var yzzy: vec4 { vec4(y, z, z, y) }
    var yzzz: vec4 { vec4(y, z, z, z) }
    var zxxx: vec4 { vec4(z, x, x, x) }
    var zxxy: vec4 { vec4(z, x, x, y) }
    var zxxz: vec4 { vec4(z, x, x, z) }
    var zxyx: vec4 { vec4(z, x, y, x) }
    var zxyy: vec4 { vec4(z, x, y, y) }
    var zxyz: vec4 { vec4(z, x, y, z) }
    var zxzx: vec4 { vec4(z, x, z, x) }
    var zxzy: vec4 { vec4(z, x, z, y) }
    var zxzz: vec4 { vec4(z, x, z, z) }
    var zyxx: vec4 { vec4(z, y, x, x) }
    var zyxy: vec4 { vec4(z, y, x, y) }
    var zyxz: vec4 { vec4(z, y, x, z) }
    var zyyx: vec4 { vec4(z, y, y, x) }
    var zyyy: vec4 { vec4(z, y, y, y) }
    var zyyz: vec4 { vec4(z, y, y, z) }
    var zyzx: vec4 { vec4(z, y, z, x) }
    var zyzy: vec4 { vec4(z, y, z, y) }
    var zyzz: vec4 { vec4(z, y, z, z) }
    var zzxx: vec4 { vec4(z, z, x, x) }
    var zzxy: vec4 { vec4(z, z, x, y) }
    var zzxz: vec4 { vec4(z, z, x, z) }
    var zzyx: vec4 { vec4(z, z, y, x) }
    var zzyy: vec4 { vec4(z, z, y, y) }
    var zzyz: vec4 { vec4(z, z, y, z) }
    var zzzx: vec4 { vec4(z, z, z, x) }
    var zzzy: vec4 { vec4(z, z, z, y) }
    var zzzz: vec4 { vec4(z, z, z, z) }
}

extension vec4 {
    var ww: vec2 { vec2(w, w) }
    var wx: vec2 { vec2(w, x) }
    var wy: vec2 { vec2(w, y) }
    var wz: vec2 { vec2(w, z) }
    var xw: vec2 { vec2(x, w) }
    var xx: vec2 { vec2(x, x) }
    var xy: vec2 { vec2(x, y) }
    var xz: vec2 { vec2(x, z) }
    var yw: vec2 { vec2(y, w) }
    var yx: vec2 { vec2(y, x) }
    var yy: vec2 { vec2(y, y) }
    var yz: vec2 { vec2(y, z) }
    var zw: vec2 { vec2(z, w) }
    var zx: vec2 { vec2(z, x) }
    var zy: vec2 { vec2(z, y) }
    var zz: vec2 { vec2(z, z) }

    var www: vec3 { vec3(w, w, w) }
    var wwx: vec3 { vec3(w, w, x) }
    var wwy: vec3 { vec3(w, w, y) }
    var wwz: vec3 { vec3(w, w, z) }
    var wxw: vec3 { vec3(w, x, w) }
    var wxx: vec3 { vec3(w, x, x) }
    var wxy: vec3 { vec3(w, x, y) }
    var wxz: vec3 { vec3(w, x, z) }
    var wyw: vec3 { vec3(w, y, w) }
    var wyx: vec3 { vec3(w, y, x) }
    var wyy: vec3 { vec3(w, y, y) }
    var wyz: vec3 { vec3(w, y, z) }
    var wzw: vec3 { vec3(w, z, w) }
    var wzx: vec3 { vec3(w, z, x) }
    var wzy: vec3 { vec3(w, z, y) }
    var wzz: vec3 { vec3(w, z, z) }
    var xww: vec3 { vec3(x, w, w) }
    var xwx: vec3 { vec3(x, w, x) }
    var xwy: vec3 { vec3(x, w, y) }
    var xwz: vec3 { vec3(x, w, z) }
    var xxw: vec3 { vec3(x, x, w) }
    var xxx: vec3 { vec3(x, x, x) }
    var xxy: vec3 { vec3(x, x, y) }
    var xxz: vec3 { vec3(x, x, z) }
    var xyw: vec3 { vec3(x, y, w) }
    var xyx: vec3 { vec3(x, y, x) }
    var xyy: vec3 { vec3(x, y, y) }
    var xyz: vec3 { vec3(x, y, z) }
    var xzw: vec3 { vec3(x, z, w) }
    var xzx: vec3 { vec3(x, z, x) }
    var xzy: vec3 { vec3(x, z, y) }
    var xzz: vec3 { vec3(x, z, z) }
    var yww: vec3 { vec3(y, w, w) }
    var ywx: vec3 { vec3(y, w, x) }
    var ywy: vec3 { vec3(y, w, y) }
    var ywz: vec3 { vec3(y, w, z) }
    var yxw: vec3 { vec3(y, x, w) }
    var yxx: vec3 { vec3(y, x, x) }
    var yxy: vec3 { vec3(y, x, y) }
    var yxz: vec3 { vec3(y, x, z) }
    var yyw: vec3 { vec3(y, y, w) }
    var yyx: vec3 { vec3(y, y, x) }
    var yyy: vec3 { vec3(y, y, y) }
    var yyz: vec3 { vec3(y, y, z) }
    var yzw: vec3 { vec3(y, z, w) }
    var yzx: vec3 { vec3(y, z, x) }
    var yzy: vec3 { vec3(y, z, y) }
    var yzz: vec3 { vec3(y, z, z) }
    var zww: vec3 { vec3(z, w, w) }
    var zwx: vec3 { vec3(z, w, x) }
    var zwy: vec3 { vec3(z, w, y) }
    var zwz: vec3 { vec3(z, w, z) }
    var zxw: vec3 { vec3(z, x, w) }
    var zxx: vec3 { vec3(z, x, x) }
    var zxy: vec3 { vec3(z, x, y) }
    var zxz: vec3 { vec3(z, x, z) }
    var zyw: vec3 { vec3(z, y, w) }
    var zyx: vec3 { vec3(z, y, x) }
    var zyy: vec3 { vec3(z, y, y) }
    var zyz: vec3 { vec3(z, y, z) }
    var zzw: vec3 { vec3(z, z, w) }
    var zzx: vec3 { vec3(z, z, x) }
    var zzy: vec3 { vec3(z, z, y) }
    var zzz: vec3 { vec3(z, z, z) }

    var wwww: vec4 { vec4(w, w, w, w) }
    var wwwx: vec4 { vec4(w, w, w, x) }
    var wwwy: vec4 { vec4(w, w, w, y) }
    var wwwz: vec4 { vec4(w, w, w, z) }
    var wwxw: vec4 { vec4(w, w, x, w) }
    var wwxx: vec4 { vec4(w, w, x, x) }
    var wwxy: vec4 { vec4(w, w, x, y) }
    var wwxz: vec4 { vec4(w, w, x, z) }
    var wwyw: vec4 { vec4(w, w, y, w) }
    var wwyx: vec4 { vec4(w, w, y, x) }
    var wwyy: vec4 { vec4(w, w, y, y) }
    var wwyz: vec4 { vec4(w, w, y, z) }
    var wwzw: vec4 { vec4(w, w, z, w) }
    var wwzx: vec4 { vec4(w, w, z, x) }
    var wwzy: vec4 { vec4(w, w, z, y) }
    var wwzz: vec4 { vec4(w, w, z, z) }
    var wxww: vec4 { vec4(w, x, w, w) }
    var wxwx: vec4 { vec4(w, x, w, x) }
    var wxwy: vec4 { vec4(w, x, w, y) }
    var wxwz: vec4 { vec4(w, x, w, z) }
    var wxxw: vec4 { vec4(w, x, x, w) }
    var wxxx: vec4 { vec4(w, x, x, x) }
    var wxxy: vec4 { vec4(w, x, x, y) }
    var wxxz: vec4 { vec4(w, x, x, z) }
    var wxyw: vec4 { vec4(w, x, y, w) }
    var wxyx: vec4 { vec4(w, x, y, x) }
    var wxyy: vec4 { vec4(w, x, y, y) }
    var wxyz: vec4 { vec4(w, x, y, z) }
    var wxzw: vec4 { vec4(w, x, z, w) }
    var wxzx: vec4 { vec4(w, x, z, x) }
    var wxzy: vec4 { vec4(w, x, z, y) }
    var wxzz: vec4 { vec4(w, x, z, z) }
    var wyww: vec4 { vec4(w, y, w, w) }
    var wywx: vec4 { vec4(w, y, w, x) }
    var wywy: vec4 { vec4(w, y, w, y) }
    var wywz: vec4 { vec4(w, y, w, z) }
    var wyxw: vec4 { vec4(w, y, x, w) }
    var wyxx: vec4 { vec4(w, y, x, x) }
    var wyxy: vec4 { vec4(w, y, x, y) }
    var wyxz: vec4 { vec4(w, y, x, z) }
    var wyyw: vec4 { vec4(w, y, y, w) }
    var wyyx: vec4 { vec4(w, y, y, x) }
    var wyyy: vec4 { vec4(w, y, y, y) }
    var wyyz: vec4 { vec4(w, y, y, z) }
    var wyzw: vec4 { vec4(w, y, z, w) }
    var wyzx: vec4 { vec4(w, y, z, x) }
    var wyzy: vec4 { vec4(w, y, z, y) }
    var wyzz: vec4 { vec4(w, y, z, z) }
    var wzww: vec4 { vec4(w, z, w, w) }
    var wzwx: vec4 { vec4(w, z, w, x) }
    var wzwy: vec4 { vec4(w, z, w, y) }
    var wzwz: vec4 { vec4(w, z, w, z) }
    var wzxw: vec4 { vec4(w, z, x, w) }
    var wzxx: vec4 { vec4(w, z, x, x) }
    var wzxy: vec4 { vec4(w, z, x, y) }
    var wzxz: vec4 { vec4(w, z, x, z) }
    var wzyw: vec4 { vec4(w, z, y, w) }
    var wzyx: vec4 { vec4(w, z, y, x) }
    var wzyy: vec4 { vec4(w, z, y, y) }
    var wzyz: vec4 { vec4(w, z, y, z) }
    var wzzw: vec4 { vec4(w, z, z, w) }
    var wzzx: vec4 { vec4(w, z, z, x) }
    var wzzy: vec4 { vec4(w, z, z, y) }
    var wzzz: vec4 { vec4(w, z, z, z) }
    var xwww: vec4 { vec4(x, w, w, w) }
    var xwwx: vec4 { vec4(x, w, w, x) }
    var xwwy: vec4 { vec4(x, w, w, y) }
    var xwwz: vec4 { vec4(x, w, w, z) }
    var xwxw: vec4 { vec4(x, w, x, w) }
    var xwxx: vec4 { vec4(x, w, x, x) }
    var xwxy: vec4 { vec4(x, w, x, y) }
    var xwxz: vec4 { vec4(x, w, x, z) }
    var xwyw: vec4 { vec4(x, w, y, w) }
    var xwyx: vec4 { vec4(x, w, y, x) }
    var xwyy: vec4 { vec4(x, w, y, y) }
    var xwyz: vec4 { vec4(x, w, y, z) }
    var xwzw: vec4 { vec4(x, w, z, w) }
    var xwzx: vec4 { vec4(x, w, z, x) }
    var xwzy: vec4 { vec4(x, w, z, y) }
    var xwzz: vec4 { vec4(x, w, z, z) }
    var xxww: vec4 { vec4(x, x, w, w) }
    var xxwx: vec4 { vec4(x, x, w, x) }
    var xxwy: vec4 { vec4(x, x, w, y) }
    var xxwz: vec4 { vec4(x, x, w, z) }
    var xxxw: vec4 { vec4(x, x, x, w) }
    var xxxx: vec4 { vec4(x, x, x, x) }
    var xxxy: vec4 { vec4(x, x, x, y) }
    var xxxz: vec4 { vec4(x, x, x, z) }
    var xxyw: vec4 { vec4(x, x, y, w) }
    var xxyx: vec4 { vec4(x, x, y, x) }
    var xxyy: vec4 { vec4(x, x, y, y) }
    var xxyz: vec4 { vec4(x, x, y, z) }
    var xxzw: vec4 { vec4(x, x, z, w) }
    var xxzx: vec4 { vec4(x, x, z, x) }
    var xxzy: vec4 { vec4(x, x, z, y) }
    var xxzz: vec4 { vec4(x, x, z, z) }
    var xyww: vec4 { vec4(x, y, w, w) }
    var xywx: vec4 { vec4(x, y, w, x) }
    var xywy: vec4 { vec4(x, y, w, y) }
    var xywz: vec4 { vec4(x, y, w, z) }
    var xyxw: vec4 { vec4(x, y, x, w) }
    var xyxx: vec4 { vec4(x, y, x, x) }
    var xyxy: vec4 { vec4(x, y, x, y) }
    var xyxz: vec4 { vec4(x, y, x, z) }
    var xyyw: vec4 { vec4(x, y, y, w) }
    var xyyx: vec4 { vec4(x, y, y, x) }
    var xyyy: vec4 { vec4(x, y, y, y) }
    var xyyz: vec4 { vec4(x, y, y, z) }
    var xyzw: vec4 { vec4(x, y, z, w) }
    var xyzx: vec4 { vec4(x, y, z, x) }
    var xyzy: vec4 { vec4(x, y, z, y) }
    var xyzz: vec4 { vec4(x, y, z, z) }
    var xzww: vec4 { vec4(x, z, w, w) }
    var xzwx: vec4 { vec4(x, z, w, x) }
    var xzwy: vec4 { vec4(x, z, w, y) }
    var xzwz: vec4 { vec4(x, z, w, z) }
    var xzxw: vec4 { vec4(x, z, x, w) }
    var xzxx: vec4 { vec4(x, z, x, x) }
    var xzxy: vec4 { vec4(x, z, x, y) }
    var xzxz: vec4 { vec4(x, z, x, z) }
    var xzyw: vec4 { vec4(x, z, y, w) }
    var xzyx: vec4 { vec4(x, z, y, x) }
    var xzyy: vec4 { vec4(x, z, y, y) }
    var xzyz: vec4 { vec4(x, z, y, z) }
    var xzzw: vec4 { vec4(x, z, z, w) }
    var xzzx: vec4 { vec4(x, z, z, x) }
    var xzzy: vec4 { vec4(x, z, z, y) }
    var xzzz: vec4 { vec4(x, z, z, z) }
    var ywww: vec4 { vec4(y, w, w, w) }
    var ywwx: vec4 { vec4(y, w, w, x) }
    var ywwy: vec4 { vec4(y, w, w, y) }
    var ywwz: vec4 { vec4(y, w, w, z) }
    var ywxw: vec4 { vec4(y, w, x, w) }
    var ywxx: vec4 { vec4(y, w, x, x) }
    var ywxy: vec4 { vec4(y, w, x, y) }
    var ywxz: vec4 { vec4(y, w, x, z) }
    var ywyw: vec4 { vec4(y, w, y, w) }
    var ywyx: vec4 { vec4(y, w, y, x) }
    var ywyy: vec4 { vec4(y, w, y, y) }
    var ywyz: vec4 { vec4(y, w, y, z) }
    var ywzw: vec4 { vec4(y, w, z, w) }
    var ywzx: vec4 { vec4(y, w, z, x) }
    var ywzy: vec4 { vec4(y, w, z, y) }
    var ywzz: vec4 { vec4(y, w, z, z) }
    var yxww: vec4 { vec4(y, x, w, w) }
    var yxwx: vec4 { vec4(y, x, w, x) }
    var yxwy: vec4 { vec4(y, x, w, y) }
    var yxwz: vec4 { vec4(y, x, w, z) }
    var yxxw: vec4 { vec4(y, x, x, w) }
    var yxxx: vec4 { vec4(y, x, x, x) }
    var yxxy: vec4 { vec4(y, x, x, y) }
    var yxxz: vec4 { vec4(y, x, x, z) }
    var yxyw: vec4 { vec4(y, x, y, w) }
    var yxyx: vec4 { vec4(y, x, y, x) }
    var yxyy: vec4 { vec4(y, x, y, y) }
    var yxyz: vec4 { vec4(y, x, y, z) }
    var yxzw: vec4 { vec4(y, x, z, w) }
    var yxzx: vec4 { vec4(y, x, z, x) }
    var yxzy: vec4 { vec4(y, x, z, y) }
    var yxzz: vec4 { vec4(y, x, z, z) }
    var yyww: vec4 { vec4(y, y, w, w) }
    var yywx: vec4 { vec4(y, y, w, x) }
    var yywy: vec4 { vec4(y, y, w, y) }
    var yywz: vec4 { vec4(y, y, w, z) }
    var yyxw: vec4 { vec4(y, y, x, w) }
    var yyxx: vec4 { vec4(y, y, x, x) }
    var yyxy: vec4 { vec4(y, y, x, y) }
    var yyxz: vec4 { vec4(y, y, x, z) }
    var yyyw: vec4 { vec4(y, y, y, w) }
    var yyyx: vec4 { vec4(y, y, y, x) }
    var yyyy: vec4 { vec4(y, y, y, y) }
    var yyyz: vec4 { vec4(y, y, y, z) }
    var yyzw: vec4 { vec4(y, y, z, w) }
    var yyzx: vec4 { vec4(y, y, z, x) }
    var yyzy: vec4 { vec4(y, y, z, y) }
    var yyzz: vec4 { vec4(y, y, z, z) }
    var yzww: vec4 { vec4(y, z, w, w) }
    var yzwx: vec4 { vec4(y, z, w, x) }
    var yzwy: vec4 { vec4(y, z, w, y) }
    var yzwz: vec4 { vec4(y, z, w, z) }
    var yzxw: vec4 { vec4(y, z, x, w) }
    var yzxx: vec4 { vec4(y, z, x, x) }
    var yzxy: vec4 { vec4(y, z, x, y) }
    var yzxz: vec4 { vec4(y, z, x, z) }
    var yzyw: vec4 { vec4(y, z, y, w) }
    var yzyx: vec4 { vec4(y, z, y, x) }
    var yzyy: vec4 { vec4(y, z, y, y) }
    var yzyz: vec4 { vec4(y, z, y, z) }
    var yzzw: vec4 { vec4(y, z, z, w) }
    var yzzx: vec4 { vec4(y, z, z, x) }
    var yzzy: vec4 { vec4(y, z, z, y) }
    var yzzz: vec4 { vec4(y, z, z, z) }
    var zwww: vec4 { vec4(z, w, w, w) }
    var zwwx: vec4 { vec4(z, w, w, x) }
    var zwwy: vec4 { vec4(z, w, w, y) }
    var zwwz: vec4 { vec4(z, w, w, z) }
    var zwxw: vec4 { vec4(z, w, x, w) }
    var zwxx: vec4 { vec4(z, w, x, x) }
    var zwxy: vec4 { vec4(z, w, x, y) }
    var zwxz: vec4 { vec4(z, w, x, z) }
    var zwyw: vec4 { vec4(z, w, y, w) }
    var zwyx: vec4 { vec4(z, w, y, x) }
    var zwyy: vec4 { vec4(z, w, y, y) }
    var zwyz: vec4 { vec4(z, w, y, z) }
    var zwzw: vec4 { vec4(z, w, z, w) }
    var zwzx: vec4 { vec4(z, w, z, x) }
    var zwzy: vec4 { vec4(z, w, z, y) }
    var zwzz: vec4 { vec4(z, w, z, z) }
    var zxww: vec4 { vec4(z, x, w, w) }
    var zxwx: vec4 { vec4(z, x, w, x) }
    var zxwy: vec4 { vec4(z, x, w, y) }
    var zxwz: vec4 { vec4(z, x, w, z) }
    var zxxw: vec4 { vec4(z, x, x, w) }
    var zxxx: vec4 { vec4(z, x, x, x) }
    var zxxy: vec4 { vec4(z, x, x, y) }
    var zxxz: vec4 { vec4(z, x, x, z) }
    var zxyw: vec4 { vec4(z, x, y, w) }
    var zxyx: vec4 { vec4(z, x, y, x) }
    var zxyy: vec4 { vec4(z, x, y, y) }
    var zxyz: vec4 { vec4(z, x, y, z) }
    var zxzw: vec4 { vec4(z, x, z, w) }
    var zxzx: vec4 { vec4(z, x, z, x) }
    var zxzy: vec4 { vec4(z, x, z, y) }
    var zxzz: vec4 { vec4(z, x, z, z) }
    var zyww: vec4 { vec4(z, y, w, w) }
    var zywx: vec4 { vec4(z, y, w, x) }
    var zywy: vec4 { vec4(z, y, w, y) }
    var zywz: vec4 { vec4(z, y, w, z) }
    var zyxw: vec4 { vec4(z, y, x, w) }
    var zyxx: vec4 { vec4(z, y, x, x) }
    var zyxy: vec4 { vec4(z, y, x, y) }
    var zyxz: vec4 { vec4(z, y, x, z) }
    var zyyw: vec4 { vec4(z, y, y, w) }
    var zyyx: vec4 { vec4(z, y, y, x) }
    var zyyy: vec4 { vec4(z, y, y, y) }
    var zyyz: vec4 { vec4(z, y, y, z) }
    var zyzw: vec4 { vec4(z, y, z, w) }
    var zyzx: vec4 { vec4(z, y, z, x) }
    var zyzy: vec4 { vec4(z, y, z, y) }
    var zyzz: vec4 { vec4(z, y, z, z) }
    var zzww: vec4 { vec4(z, z, w, w) }
    var zzwx: vec4 { vec4(z, z, w, x) }
    var zzwy: vec4 { vec4(z, z, w, y) }
    var zzwz: vec4 { vec4(z, z, w, z) }
    var zzxw: vec4 { vec4(z, z, x, w) }
    var zzxx: vec4 { vec4(z, z, x, x) }
    var zzxy: vec4 { vec4(z, z, x, y) }
    var zzxz: vec4 { vec4(z, z, x, z) }
    var zzyw: vec4 { vec4(z, z, y, w) }
    var zzyx: vec4 { vec4(z, z, y, x) }
    var zzyy: vec4 { vec4(z, z, y, y) }
    var zzyz: vec4 { vec4(z, z, y, z) }
    var zzzw: vec4 { vec4(z, z, z, w) }
    var zzzx: vec4 { vec4(z, z, z, x) }
    var zzzy: vec4 { vec4(z, z, z, y) }
    var zzzz: vec4 { vec4(z, z, z, z) }
}
