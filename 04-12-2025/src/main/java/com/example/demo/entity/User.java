package com.example.demo.entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String firstName;

    @Column(nullable = false)
    private String lastName;

    @Column(nullable = false, unique = true)
    private String email;

    // Automatically format data before save/update
    @PrePersist
    @PreUpdate
    public void normalize() {
        firstName = firstName.trim();
        lastName = lastName.trim();
        email = email.toLowerCase().trim();
    }
}
