uniform lowp vec4 tint;

void main() {
	// 这里的 tint.rgb 就是颜色（白色），tint.a (即 tint.w) 就是透明度
	// 为了防止在某些渲染管线下变黑，我们使用预乘 Alpha 的写法：
	gl_FragColor = vec4(tint.rgb * tint.a, tint.a);
}