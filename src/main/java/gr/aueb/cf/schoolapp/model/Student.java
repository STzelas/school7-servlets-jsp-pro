package gr.aueb.cf.schoolapp.model;

import lombok.*;

import java.time.LocalDateTime;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Student {
    private Long id;
    private String firstname;
    private String lastname;
    private String fatherName;
    private String phoneNum;
    private String email;
    private String street;
    private String streetNum;
    private String zipCode;
    private Integer cityId;
    private String uuid;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}
