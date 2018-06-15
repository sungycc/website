<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
* {
  margin: 0;
  border: 0;
  padding: 0;
  box-sizing: border-box;
}
ul {
  list-style: none;
}
html,
body {
  width: 100%;
  height: 100%;
}
html::-webkit-scrollbar {
  display: none;
}
#app {
  width: 100%;
  height: 100%;
  font-family: "微软雅黑";
}
</style>
