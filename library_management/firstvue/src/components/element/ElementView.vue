<template>
    <div>
      <el-container>
  <el-header>
    <img src="@/assets\pic\logo.png"  style="width: 60px; position: relative; right: 10px;">
    <span style="position:absolute;top:20px; margin-left: 10px;"> 巴里のLibraryManagement</span>
  </el-header>

  <el-container>
    <el-aside width="200px">
      <div>
        <AsideView></AsideView>
      </div>
    </el-aside>
    <el-container>
      <el-main>
        <div>
         <router-view></router-view>
        </div>
      </el-main>
    </el-container>
  </el-container>
</el-container>
    </div>
   
    
</template>
<script>
import AsideView from './AsideView.vue';
export default {
name:'ElementView',

methods: {
     
},
components:{
  AsideView
}
}
</script>

<style>
  .el-header{
    font-size: 20px;
    font-style: initial;
    background-color: white;
    color: #333;
    line-height: 40px;
    border-bottom: #989696 solid 1px;
  }
  
  .el-aside {
    min-height: 91vh;
   background-color:white;
    line-height: 200px;
    border-right: #989696 solid 1px;
  }
  
  .el-main {
    
    line-height: 160px;
   
  }
  
  body > .el-container {
    margin-bottom: 40px;
  }
  
  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }
  
  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
  }
</style>