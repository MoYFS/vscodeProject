<template>
 <div class = "header-container" :style="{backgroundColor:bgcolor||'black' , color:color||'white'}">
   {{title ||"Header 组件"}}
 </div>
</template>

<script >
export default {
  name:'MyHeader',
  props: {
    title:String,
    bgcolor:String,
    color:String

    }
}

</script>

<style lang="less" scoped>
.header-container{
  height: 45px;
  background-color: pink;
  text-align: center;
  line-height: 45px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 999;
}
</style>