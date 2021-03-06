package de.he;

import org.glassfish.jersey.server.mvc.Viewable;

import java.io.Reader;
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

@Path("")
public class Hardwareelectronics {
    @GET
    public Viewable Template() throws Exception {
        // This method is only here to deliver the base HTML
        // which then includes the needed client side javascript to fetch JSON data.
        return new Viewable("/index.jsp");
    }

    @GET
    @Path("cpus/{pathID}")
    // Tell Jersey we want to return JSON
    @Produces(MediaType.APPLICATION_JSON)
    public Response cpuJSON(@PathParam("pathID") String strID) throws Exception {
        int intID = Integer.parseInt(strID);
        System.out.println("Joels schuld");
        SQLite s = new SQLite();
        CPU cpus = s.selectCPU(intID);   //Method should return selected Cpu!

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return Response.status(Response.Status.OK).entity(cpus).build();
    }

    @GET
    @Path("cpus")
    // Tell Jersey we want to return JSON
    @Produces(MediaType.APPLICATION_JSON)
    public Response cpusJSON() throws Exception {
        System.out.println("okay");

        SQLite s = new SQLite();
        Vector<CPU> cpus = s.getAllCpus();   //Method should return all Cpus we offer!

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return Response.status(Response.Status.OK).entity(cpus).build();
    }
}
