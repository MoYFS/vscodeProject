<script lang="ts">
 export default {
   name:"MyCount",
   // data(){
   //   return {
   //     count:0,
   //   }
   // },
   // computed:{
   //  plus(){
   //   return  this.count*2
   //  }
   // },
   props:{
     count:{
       type:Number,
       default: 0,
       required:true,
     },
     state:{
       type:Boolean,
       default:false,
       required: true,
     },
     info:[String,Number],
     type:{
       validator(value){
         return ['success','warning','danger'].indexOf(value)!==-1
       }
     }
   }
 }
</script>

<template>
  <div>
<!--    <input type="text" v-model.number="count">-->
<!--  <p>数量：{{ plus }}</p>-->
    <p>数量：{{ count }}</p>
  <P>状态：{{ state }}</P>
  </div>
</template>

<style scoped lang="less">

</style>