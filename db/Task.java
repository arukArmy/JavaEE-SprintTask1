package db;

import java.util.ArrayList;
import java.util.function.IntFunction;

public class Task extends ArrayList<Task> {
    private Long id;
    private String name;
    private String description;
    private   String deadlineDate;
    private String Isdone;

    public Task(Long id, String name, String description, String deadlineDate, String Isdone) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
        this.Isdone = Isdone;
    }
    public Task(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getIsDone() {
        return Isdone;
    }

    public void setDone(String Isdone) {
        this.Isdone = Isdone;
    }


}
