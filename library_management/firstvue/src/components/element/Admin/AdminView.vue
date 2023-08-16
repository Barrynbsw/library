<template>
  <div id="Home">
    <div id="up">
      <el-input style="width:240px ;margin-left: 6px ;position: relative; bottom:30px"  v-model="params.adminname" placeholder="请输入管理员姓名"></el-input>
      <el-input style="width:240px;margin-left: 15px; position: relative; bottom:30px"   v-model="params.phone" placeholder="请输入电话"></el-input>
      <el-button style="margin-left: 3px; position: relative; bottom:30px" type="primary" icon="el-icon-search" @click="load">查询</el-button>
      <el-button style="margin-left: 3px; position: relative; bottom:30px" type="warning" icon="el-icon-refresh-left" @click="reset">重置</el-button>
    </div>
    <div id="down">
      <el-table
          :data="tableData"
          style="width: 100%;position: relative; bottom: 80px;"
      >
        <el-table-column
            prop="id"
            label="编号"
            width="180">
        </el-table-column>
        <el-table-column
            prop="adminname"
            label="管理员"
            width="180">
        </el-table-column>
        <el-table-column
            prop="phone"
            label="电话"
            width="180">
        </el-table-column>
        <el-table-column
            prop="email"
            label="邮件"
              >
        </el-table-column>

        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button
                type="primary"
                size="mini"
                @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
            <el-popconfirm
                title="这一行内容确定删除吗？"
                @confirm="handleDelete(scope.$index, scope.row)"
            >
              <el-button slot="reference" type="danger"  size="mini" style="margin-left: 10px">删除</el-button>
            </el-popconfirm>
          </template>
        </el-table-column>
      </el-table>
    </div>
    <div class="page">
      <el-pagination
          @current-change="handleCurrentChange"
          style="position: relative; bottom:60px"
          small
          layout="prev, pager, next"
          :page-size="params.pageSize"
          :current-page.sync="params.pageNum"
          :total="total"
      >
      </el-pagination>
    </div>
  </div>
</template>
<script>
import request from "../../../utils/request"
export default {
  name:'AdminView',
  data() {
    return {
      params:{
        adminname:'',
        phone:'',
        pageNum:1,
        pageSize:10
      },
      tableData:[
      ],
      total:0,
    }
  },
  created() {
    this.load();
  },
  methods: {
    load: function () {
      request.get('/admin/page',{params:this.params}).then(res => {
        this.tableData=res.data.list;
        this.total= res.data.total;
      })
    },
    reset: function (){
      this.params.name='';
      this.params.phone='';
      this.load();
    },
    handleCurrentChange(val) {
      this.params.pageNum=val;
      this.load();
    },
    handleEdit(index, row) {
      this.$router.push('/editadmin?id='+row.id);
      console.log(index, row);
    },
    handleDelete(index, row) {
      request.delete("/admin/delete", {
        params: {
          id: row.id
        }
      }).then(res =>{
        if (res.code ==="200"){
          this.load();
          this.$notify.success("删除成功");
        }
        console.log(index, row);
      })}
  }

}

</script>
<style>

</style>