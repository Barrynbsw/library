<template>
  <div>
  <el-row>
    <el-col :span="24">
      <div class="grid-content bg-purple-dark">
        <div>上回书说到。彼时的璃月。海中有大魔侵扰。山间有恶螭盘踞。岩王帝君召集众仙。要还天下一个朗朗乾坤,传闻在帝君出征之时，曾言道：</div>
        <div id="poem">
          <div>心扉敞开思意船，翻阅岁月寻光辉。</div>
          <div>书影斑驳思万卷，虚无缥缈起风烟。</div>
          <div>龙椅桌橱鳞次栉，微景丰协架高悬。</div>
          <div>灯火照亮人生路，书香滋养心灵田。</div>
        </div>
      </div>

    </el-col>
  </el-row>

       </div>

</template>

<script>
export default {
name:'AboutView',
}
</script>

<style>
.grid-content{
font-size: 15px;
  line-height: 30px;
}
#joke{
  color: #ff8765;
}
#poem{
  margin-top: 80px;
    font-family:"Palace Script MT";
  font-size: larger;
  text-align: center;
  line-height: 60px;
}
</style>