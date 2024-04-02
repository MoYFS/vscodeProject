<template>
  <div class="app-container">
    <MyHeader title="水果列表" bgcolor="#0078D7" color="white"></MyHeader>
    <FruitList></FruitList>
<!--    <my-count type="success" :count="123" :state="true"></my-count>-->
  </div>
</template>

<script>
import MyHeader from "./MyHeader/MyHeader.vue"
import MyCount from "./count/count.vue"
import FruitList from "./FruitList/FruitList.vue";
  export default {
    name:'MyApp',
    components:{
      MyHeader,
      MyCount,
      FruitList,
    }
  }
</script>

<style scoped lang="less">
.app-container{
  padding-top: 45px;

}
</style>