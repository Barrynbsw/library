<template>
  <div>
    <el-form :inline="true" :model="formInline"  style="margin-top: 30px ; width: 60% ;">
      <el-form-item label="图书：" class="la">
        <el-input v-model="formInline.adminname" placeholder="管理员" class="in"></el-input>
      </el-form-item>
      <el-form-item label="作者：" class="la">
        <el-input v-model="formInline.phone" placeholder="电话" class="in"></el-input>
      </el-form-item>
      <el-form-item label="价格：" class="la">
        <el-input v-model="formInline.email" placeholder="邮箱" class="in"></el-input>
      </el-form-item>
      <el-form-item label="出版社：" class="la">
        <el-input v-model="formInline.password" placeholder="密码" class="in"></el-input>
      </el-form-item>
      <el-form-item id="btn">
        <el-button type="primary" @click="add">添加</el-button>
      </el-form-item>
    </el-form>

  </div>
</template>
<script>
import request from "../../../utils/request"
export default {
  name:'AddBookView',
  data() {
    return {
      formInline: {
        adminname:'',
        phone:'',
        email:'',
        password:'',
      }
    }
  },
  methods: {
    add() {
      request.post('/admin/add',this.formInline).then(res => {
        if(res.code == "200"){
          this.$notify.success('新增成功');
          this.formInline={};
        }
        else {
          this.$notify.error(res.msg);
        }

      })
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