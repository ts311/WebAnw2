package de.he;

import org.glassfish.jersey.server.mvc.Viewable;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Hashtable;
import java.util.Vector;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import javax.json.Json;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("cpu")
public class CPU extends Article {
    private int core;
    private int threads;
    private float frequency;
    private float turbo;
    private String socket;
    private int tdp;

    public CPU(float price, int artNr, String manufact, String artName, int artCount, int core, int threads, float frequency, float turbo, String socket, int tdp) {
        super(price, artNr, manufact, artName, artCount);
        this.core = core;
        this.threads = threads;
        this.frequency = frequency;
        this.turbo = turbo;
        this.socket = socket;
        this.tdp = tdp;
    }

    public CPU getAllCpus() {
        //Aufruf von Joels methode um die objekte aus der db zu ziehen
        CPU cpus = new CPU(120, 1, "AMD", "Ryzen 6", 12, 4, 2, 1000, 1, "AM4", 2);

        //String header = "<html>Hallo Welt!</html>";
        return cpus;
    }

    @GET
    @Path("cpu.json")
    @Produces(MediaType.APPLICATION_JSON)
    public Response allCpus() throws Exception {
        CPU cpus = new CPU(120, 1, "AMD", "Ryzen 6", 12, 4, 2, 1000, 1, "AM4", 2);
        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        return Response.status(200).entity(cpus).build();
    }

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
