import $ from 'jquery'
//导入样式（在webpack中，一切皆模块，都可以通过ES6导入语法进行导入使用）
import './css/index.css'

$(function () {
    $('li:odd').css('background-color','red')
    $('li:even').css('background-color','blue')
})
