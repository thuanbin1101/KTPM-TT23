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
        // console.log(JSON.parse(atob(payload)));
        return JSON.parse(atob(payload));
    }
}

class AppStorage {
    storeToken(token) {
        localStorage.setItem("token", token);
    }

    storeUserName(user_name) {
        localStorage.setItem("user_name", user_name);
    }
    storeUserEmail(user_email) {
        localStorage.setItem("user_email", user_email);
    }

    store(token, user_name,user_email) {
        this.storeToken(token);
        this.storeUserName(user_name);
        this.storeUserEmail(user_email);
    }

    clear() {
        localStorage.removeItem("token");
        localStorage.removeItem("user_name");
        localStorage.removeItem("user_email");
    }

    getToken() {
        localStorage.getItem("token");
    }

    getUserName() {
        localStorage.getItem("user_name");
    }
    getUserEmail() {
        localStorage.getItem("user_email");
    }
}

class UserJWT {
    responseAfterLogin(res) {
        const access_token = res.data.access_token;
        const user_name = res.data.user_name;
        const user_email = res.data.user_email;
        if (new Token().isValid(access_token)) {
            new AppStorage().store(access_token, user_name,user_email);
        }
    }

    hasToken() {
        const storeToken = localStorage.getItem("token");
        if (storeToken) {
            return !!new Token().isValid(storeToken);
        }
        return false;
    }

    loggedIn() {
        return this.hasToken();
    }

    name() {
        if (this.loggedIn()) {
            return localStorage.getItem("user_name");
        }
    }
    email() {
        if (this.loggedIn()) {
            return localStorage.getItem("user_email");
        }
    }

    id() {
        if (this.loggedIn()) {
            const payload = new Token().payload(localStorage.getItem("token"));
            return payload.sub;
        }
    }
}

