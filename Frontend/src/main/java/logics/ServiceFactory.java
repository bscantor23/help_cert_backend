/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

/**
 *
 * @author genyu
 */
public class ServiceFactory {

    private String BackendURLServer = "https://help-cert-services.herokuapp.com/api/v2";

    private String auth = "/auth";
    private String users = "/users";
    private String info = "/info";
    private String profile = "/profile";
    private String jobs = "/jobs";
    private String contracts = "/contracts";
    private String certifications = "/certifications";

    public ServiceFactory() {
    }

    public String getBackendURLServer() {
        return BackendURLServer;
    }

    public void setBackendURLServer(String BackendURLServer) {
        this.BackendURLServer = BackendURLServer;
    }

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public String getUsers() {
        return users;
    }

    public void setUsers(String users) {
        this.users = users;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getJobs() {
        return jobs;
    }

    public void setJobs(String jobs) {
        this.jobs = jobs;
    }

    public String getContracts() {
        return contracts;
    }

    public void setContracts(String contracts) {
        this.contracts = contracts;
    }

    public String getCertifications() {
        return certifications;
    }

    public void setCertifications(String certifications) {
        this.certifications = certifications;
    }

}
