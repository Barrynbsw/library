<template>

  <div>

    <el-row :gutter="20">
      <el-col :span="6" v-for="item in cards" :key="item.title">
        <el-card class="box-card">
          <div slot="header" class="clearfix">{{ item.title }}</div>
          <div class="text item">
            <svg class="icon" aria-hidden="true">
              <use :xlink:href="item.icon" style="width: 100px"></use>
            </svg>
            <span class="text">{{ item.data }}</span>
          </div>
        </el-card>
      </el-col>
    </el-row>
    <div>
      <el-statistic
          ref="statistic"
          @finish="hilarity"
          format="HH:mm:ss"
          :value="deadline4"
          title="距离明日："
          time-indices
      >
      </el-statistic>
    </div>
  </div>



</template>

<script>


import Cookies from "js-cookie";
export default {
  data() {
    return {
      cards: [
        { title: '已借阅', data: 100, icon: '#iconlend-record-pro' },
        { title: '总访问', data: 100, icon: '#iconvisit'   },
        { title: '图书数', data: 100, icon: '#iconbook-pro' },
        { title: '用户数', data: 1000, icon: '#iconpopulation' }
      ],
      admin:JSON.parse(Cookies.get('admin')),
      data:{},
      deadline4: Date.now() + (new Date().setHours(23, 59, 59) - Date.now()),
    }
  },
  created() {},
  mounted() {
  },
  methods: {
    hilarity() {
      this.$notify({
        title: "提示",
        message: "时间已到",
        duration: 0,
      });
    },
  }
}
</script>

<style scoped>
.box-card {
  width: 80%;
  margin-bottom: 25px;
  margin-left: 10px;
}

.clearfix {
  text-align: center;
  font-size: 15px;
}

.text {
  text-align: center;
  font-size: 24px;
  font-weight: 700;
  vertical-align: super;
}

#main {
  width: 100%;
  height: 450px;
  margin-top: 20px;
}

.icon {
  width: 50px;
  height: 50px;
  padding-top: 5px;
  padding-right: 10px;
}
</style>