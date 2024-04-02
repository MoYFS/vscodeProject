<template>
  <h1>{{ msg }}</h1>
  <button @click.prevent="add(2)">count is: {{ count }}</button>
  <p>Edit <code>components/HelloWorld.vue</code> to test hot module replacement.</p>
</template>

<script>

import {  ElMessage } from "element-plus"

export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data() {
    return {
      count: 0
    }
  },
  methods:{
    add(n){
      this.count+=n
    }
  }
}


</script>