package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Event;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<Event, String> {

}
