const path =require('path')//导入node.js中专门操作路径的模块
const HtmlPlugin=require('html-webpack-plugin')

const htmlplugin=new HtmlPlugin({
    template: './src/index.html',
    filename: './index.html'
})

module.exports={
    mode:'development',//开发版development,生产production
    entry:path.join(__dirname,'./src/index.js'),//打包入口文件的路径
    output:{
        path:path.join(__dirname,'./dist'),//输出文件的路径
        filename:'main.js'//输出文件名
    },
    plugins:[htmlplugin],
    devServer:{
        open:true,
        host: '127.0.0.1',
        port: '80'
    }
}