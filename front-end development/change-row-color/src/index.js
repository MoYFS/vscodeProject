import $ from 'jquery'
//导入样式（在webpack中，一切皆模块，都可以通过ES6导入语法进行导入使用）
import './css/index.css'
import './css/index.less'
import logo from './images/logo.jpg'

$('.box').attr('src', logo)

$(function () {
    $('li:odd').css('background-color','red')
    $('li:even').css('background-color','blue')
})
