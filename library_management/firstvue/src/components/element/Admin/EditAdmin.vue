<template>
  <div>
    <el-form :inline="true" :model="formInline"  style="margin-top: 30px ; width: 60% ;">
      <el-form-item label="管理员：" class="la">
        <el-input v-model="formInline.adminname" placeholder="管理员" class="in"></el-input>
      </el-form-item>
      <el-form-item label="电话：" class="la">
        <el-input v-model="formInline.phone" placeholder="电话" class="in"></el-input>
      </el-form-item>
      <el-form-item label="邮箱：" class="la">
        <el-input v-model="formInline.email" placeholder="邮箱" class="in"></el-input>
      </el-form-item>
      <el-form-item label="密码：" class="la">
        <el-input v-model="formInline.password" placeholder="密码" class="in"></el-input>
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
  name:'EditAdminView',
  data() {
    return {
      formInline: {
        adminname:'',
        email:'',
        phone:'',
        password:'',
        id:''
      },
      params:{
        id:''
      }
    }
  },



  created() {
    this.params.id=this.$route.query.id;
    request.get('/admin/getByid',{params:{id:this.params.id}}).then(res => {
      this.formInline=res.data;
    })
  },
  methods: {
    add(){
      this.$router.push('/admin');
      request.put('/admin/update', this.formInline).then(res => {
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