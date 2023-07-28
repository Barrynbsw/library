<template>
  <div style="margin-top: 20px; ">
    <el-row class="tac">
      <el-col :span="12" style="width: 200px">
        <el-menu
            :default-active="home"
            class="el-menu-vertical-demo"
            @open="handleOpen"
            @close="handleClose"
            background-color="white"
            text-color="#333"
            active-text-color="#ffd04b"
            router="true"
            default-openeds="['1']"
            >
          <el-menu-item index="/home">
            <i class="el-icon-eleme"></i>首页
          </el-menu-item>
          <el-submenu index="1">
            <template slot="title">
              <i class="el-icon-location"></i>
              <span></span>
            </template>
            <el-menu-item-group>
              <template slot="title"><i class="el-icon-user" ></i>会员管理</template>
              <el-menu-item index="1-1">会员添加</el-menu-item>
              <el-menu-item index="user">会员列表</el-menu-item>
            </el-menu-item-group>
            <el-menu-item-group title="分组2">
              <el-menu-item index="1-3">选项3</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
        </el-menu>
      </el-col>

    </el-row>
  </div>
</template>

<script>
export default {
name:'AsideView',
  data(){
  return{
    activeIndex:'/home'
  }
  },
methods:{
    handleOpen(key, keyPath) {
        console.log(key, keyPath);
      },
      handleClose(key, keyPath) {
        console.log(key, keyPath);
      }
}
}
</script>
<style>
</style>