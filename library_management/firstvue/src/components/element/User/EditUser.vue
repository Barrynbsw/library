<template>
  <div>
    <el-form :inline="true" :model="formInline"  style="margin-top: 30px ; width: 80% ;">
      <el-form-item label="用户名：" class="la">
        <el-input v-model="formInline.username" placeholder="用户名" class="in"></el-input>
      </el-form-item>
      <el-form-item label="姓名：" class="la">
        <el-input v-model="formInline.name" placeholder="姓名" class="in"></el-input>
      </el-form-item>
      <el-form-item label="年龄：" class="la">
        <el-input v-model="formInline.age" placeholder="年龄" class="in"></el-input>
      </el-form-item>
      <el-form-item label="性别：" class="la">
        <el-input v-model="formInline.sex" placeholder="性别" class="in"></el-input>
      </el-form-item>
      <el-form-item label="电话：" class="la">
        <el-input v-model="formInline.phone" placeholder="电话" class="in"></el-input>
      </el-form-item>
      <el-form-item label="地址：" class="la">
        <el-input v-model="formInline.address" placeholder="地址" class="in"></el-input>
      </el-form-item>
      <el-form-item id="btn">
        <el-button type="primary" @click="add">保存</el-button>
      </el-form-item>
    </el-form>

  </div>
</template>
<script>
import request from "../../../utils/request"
export default {
  name:'EditUserView',
  data() {
    return {
      formInline: {
        name:'',
        username:'',
        age:'',
        sex:'',
        address:'',
        phone:'',
        id:''
      },
      params:{
        id:''
      }
    }
  },



  created() {
    this.params.id=this.$route.query.id;
    request.get('/user/getByid',{params:{id:this.params.id}}).then(res => {
      this.formInline=res.data;
    })
  },
  methods: {
        add(){
          this.$router.push('/user');
        request.put('/user/update', this.formInline).then(res => {
        this.$notify.success('更新成功');
          console.log(res.data);
      }

      )
      }
      }
      }

</script>
<style>
.in{
  margin-top: 60px;
  margin-left: 10px;
}
.la{
  margin-left: 40px;

}
#btn{
  position: absolute;
  left: 800px;
  top: 500px;
}
</style>