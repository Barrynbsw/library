<template>
  <div style="height: 60px; line-height:50px; border-bottom: 1px solid #ccc; display: flex">


    <div style="width: 200px; padding-left:30px; font-weight: bold; color:dodgerblue;">
      <img :src="imgUrl" class="icon" >
      <span> 图书管理系统</span>
    </div>
    <div style="flex: 1">

    </div>
    <div style="width: 100px">
      <el-dropdown>
  <span class="el-dropdown-link" style="cursor: pointer">
    {{admin.adminname}}<i class="el-icon-arrow-down el-icon--right"></i>
  </span>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item ><div @click="exit">退出系统</div></el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </div>
  </div>
</template>

<script>

import Cookies from "js-cookie";
export default {
  name: "HeaderView",
  props: ['user'],
  data(){
    return{
      admin:JSON.parse(Cookies.get('admin')),
      imgUrl:require("@/assets/pic/logo.png")
    }
  },
  created(){

  },
  methods:{
    exit(){
      Cookies.remove('admin');
      this.$router.push('/login')

     }
  }

}
</script>

<style scoped>
.icon {
  width: 40px;
  height: 40px;
  padding-top: 9px;
  padding-right: 10px;
}
</style>