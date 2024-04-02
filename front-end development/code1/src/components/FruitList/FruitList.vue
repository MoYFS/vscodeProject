<script lang="ts">
export default {
  name: 'FruitList',
  data() {
    return {
      fruitlist: [
        { id: 1, fruit: '香橼', pic: '/src/assets/images/1.jpg', price: 5, count: 1, state: false },
        { id: 2, fruit: '柚子', pic: '/src/assets/images/2.jpg', price: 4.5, count: 1, state: false },
        { id: 3, fruit: '橘子', pic: '/src/assets/images/3.jpg', price: 3, count: 1, state: false },
        { id: 4, fruit: '橙子', pic: '/src/assets/images/4.jpg', price: 6, count: 1, state: false },
        { id: 5, fruit: '粑粑柑', pic: '/src/assets/images/5.jpg', price: 6.5, count: 1, state: false },
        { id: 6, fruit: '柠檬', pic: '/src/assets/images/6.jpg', price: 4, count: 1, state: false },
        { id: 7, fruit: '青柠', pic: '/src/assets/images/7.jpg', price: 5.2, count: 1, state: false },
      ],
    }
  },
  computed:{
    total(){
      let t=0;
      this.fruitlist.forEach(x=>{
        if(x.state){
          t=t+x.count
        }
      })
      return t
    },
    amount(){
      let t=0;
      this.fruitlist.forEach(x=>{
        if(x.state){
          t=t+x.count*x.price
        }
      })
      return t
    }
  },
  methods:{
    onSettleClick(){
      let amount=0;
      let total=0
      this.fruitlist.forEach(x=>{
        if(x.state){
          console.log(x.fruit+'数量为：'+x.count)
          total+=x.count
          amount+=x.count*x.price
        }
      })
      if(amount===0 || total===0){
        return
      }
      console.log('水果总数为:'+total+",总价为:"+amount)
    },
    onSubClick(id){
      const findResult=this.fruitlist.find(x=>x.id===id)
      if(findResult && findResult.count>1){
        findResult.count--
      }
    },
    onAddClick(id){
      const findResult=this.fruitlist.find(x=>x.id===id)
      if(findResult){
        findResult.count++
      }
    }
  }
}
</script>

<template>
  <div class="fruit-list-container">
    <div class="fruit-list">
      <div class="fruit-item" v-for="item in fruitlist" :key="item.id">
        <div class="left">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" :id="item.id" v-model="item.state">
            <label class="custom-control-label" :for="item.id">
              <img :src="item.pic" alt="" class="thumb">
            </label>
          </div>
        </div>
        <div class="right">
          <div class="top">{{item.fruit}}</div>
          <div class="bottom">
            <div class="price">￥{{ item.price }}</div>
            <div class="btns">
              <button type="button" @click.stop="onSubClick(item.id)">-</button>
              <div class="count">{{ item.count }}</div>
              <button type="button" @click.stop="onAddClick(item.id)">+</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="settle-box">
      <span>总数量：{{total }}</span>
      <span> 总价：{{ amount }}元</span>
<!--      <button type="button" class="btn btn-primary" :disabled="false" @click.stop="console.log('点击了结算')">结算</button>-->
      <button type="button" class="butt" :disabled="false" @click.stop="onSettleClick()">结算</button>
    </div>
  </div>
</template>

<style scoped lang="less">
.fruit-list-container{
  padding-bottom: 50px;
}
.fruit-item {
  display: flex;
  padding: 10px;
  & + .fruit-item {
    border-top: 1px solid #efefef;
  }
  .left {
    margin-top: 10px;
    .thumb {
      width: 100px;
      height: 100px;
    }
  }
  .right{
    display: flex;
    flex: 1;
    flex-direction: column;
    justify-content: space-between;
    .top{
      font-weight: bold;
      font-size: 13px;
    }
    .bottom{
      display: flex;
      justify-content: space-between;
      align-items: center;
      .price {
        font-size: 13px;
        font-weight: bold;
        color: red;
      }
      .btns{
        display: flex;
        align-items: center;
        .count{
          display: inline-block;
          width: 28px;
          text-align: center;
        }
      }
    }
  }
}
.custom-control-label::before,
.custom-control-label::after{
  top:47px;
  border-radius: 10px !important;
}
.settle-box{
  height: 50px;
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  background-color: white;
  border-top:1px solid #efefef;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 10px;
}
.butt{
  width: 80px;
  height: 40px;
  color: black;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  //background: transparent;
  background-color: skyblue;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
  box-shadow: inset 2px 2px 2px 0px rgba(255,255,255,.5),
  7px 7px 20px 0px rgba(0,0,0,.1),
  4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}
</style>