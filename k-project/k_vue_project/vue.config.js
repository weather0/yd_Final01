module.exports = {
  outputDir: "../src/main/resources/static",
  indexPath: "../static/index.html",
  devServer: {
      port: 8082,
      proxy: {
        '/api': {
        target: 'http://localhost:8081',
        changeOrigin: true
      }
  },
  chainWebpack: config => {
      const svgRule = config.module.rule("svg");
      svgRule.uses.clear();
      svgRule.use("vue-svg-loader").loader("vue-svg-loader");
  }
}
};