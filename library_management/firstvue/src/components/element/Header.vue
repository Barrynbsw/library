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
  <span class="el-dropdown-link">
    下拉菜单<i class="el-icon-arrow-down el-icon--right"></i>
  </span>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item @click="exit">退出系统</el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </div>
  </div>
</template>

<script>


export default {
  name: "HeaderView",
  props: ['user'],
  data(){
    return{
      User:[],
      imgUrl:require("@/assets/pic/logo.png")
    }
  },
  created(){
    // let userStr = sessionStorage.getItem("user")||"{}"
    // this.User = JSON.parse(userStr)
  },
  methods:{
    exit(){
      sessionStorage.removeItem("user")
      this.$router.push("/login")

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