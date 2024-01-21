const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot49j18/",
            name: "springboot49j18",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot49j18/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "新闻推荐系统"
        } 
    }
}
export default base
