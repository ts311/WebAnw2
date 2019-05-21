package de.he;

import javax.ws.rs.Path;

@Path("/cpu")
public class CPU extends Article {
    private int core;
    private int threads;
    private float frequency;
    private float turbo;
    private String socket;
    private int tdp;

    public int getCore() {
        return core;
    }

    public void setCore(int core) {
        this.core = core;
    }

    public int getThreads() {
        return threads;
    }

    public void setThreads(int threads) {
        this.threads = threads;
    }

    public float getFrequency() {
        return frequency;
    }

    public void setFrequency(float frequency) {
        this.frequency = frequency;
    }

    public float getTurbo() {
        return turbo;
    }

    public void setTurbo(float turbo) {
        this.turbo = turbo;
    }

    public String getSocket() {
        return socket;
    }

    public void setSocket(String socket) {
        this.socket = socket;
    }

    public int getTdp() {
        return tdp;
    }

    public void setTdp(int tdp) {
        this.tdp = tdp;
    }
}
