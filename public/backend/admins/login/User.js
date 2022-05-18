class Token {
    isValid(token) {
        const payload = this.payload(token);
        if (payload) {
            return (payload.iss =
                !!("http://127.0.0.1:8000/api/auth/login" ||
                    "http://127.0.0.1:8000/api/auth/register"));
        }
        return false;
    }

    payload(token) {
        const payload = token.split(".")[1];
        return this.decode(payload);
    }

    decode(payload) {
        console.log(JSON.parse(atob(payload)));
        return JSON.parse(atob(payload));
    }
}

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

class UserJWT {
    responseAfterLogin(res) {

        const access_token = res.data.access_token;
        if (new Token().isValid(access_token)) {
            new AppStorage().store(access_token);
        }
    }

    hasToken() {
        const storeToken = localStorage.getItem("token");
        if (storeToken) {
            return new Token().isValid(storeToken) ? true : false;
        }
        return false;
    }

    loggedIn() {
        return this.hasToken();
    }

    // name() {
    //     if (this.loggedIn()) {
    //         return localStorage.getItem("user");
    //     }
    // }
    id() {
        if (this.loggedIn()) {
            const payload = new Token().payload(localStorage.getItem("token"));
            return payload.sub;
        }
    }
}
