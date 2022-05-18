class AppStorage {
    storeToken(token) {
        localStorage.setItem("token", token);
    }

    store(token) {
        this.storeToken(token);
    }
    clear() {
        localStorage.removeItem("token");
        localStorage.removeItem("user");
    }
    getToken() {
        localStorage.getItem("token");
    }
    getUser() {
        localStorage.getItem("user");
    }
}
export default AppStorage = new AppStorage();
