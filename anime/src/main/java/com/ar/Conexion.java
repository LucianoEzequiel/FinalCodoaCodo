package com.ar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class Conexion {
    private String jdbcURL = "jdbc:mysql://localhost:3306/anime";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    public Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException(e);
        }
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public List<Anime> getAnimes() {
        List<Anime> animes = new ArrayList<>();
        String sql = "SELECT * FROM anime";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Anime anime = new Anime();
                anime.setId(rs.getInt("id"));
                anime.setTitulo(rs.getString("titulo"));
                anime.setGenero(rs.getString("genero"));
                anime.setDuracion(rs.getString("duracion"));
                anime.setImagen(rs.getString("imagen"));
                animes.add(anime);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return animes;
    }

    public void addAnime(Anime anime) throws SQLException {
        String sql = "INSERT INTO anime (titulo, genero, duracion, imagen) VALUES (?, ?, ?, ?)";
        Connection conn = getConnection();
        try (
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, anime.getTitulo());
            stmt.setString(2, anime.getGenero());
            stmt.setString(3, anime.getDuracion());
            stmt.setString(4, anime.getImagen());
            stmt.executeUpdate();
        }
        finally
        {
            conn.close();
        }
    }

    public void deleteAnime(int id) throws SQLException {
        String sql = "DELETE FROM anime WHERE id = ?";
        Connection conn = getConnection();
        try (
            PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
        finally
        {
            conn.close();
        }
    }
}