package db;

import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Task> tasks = new ArrayList<>();

    private static Long id = 5L;

    static {
        tasks.add(
                new Task( 1L,
                        "Создать Веб приложение на JAVA EE",
                        "Нужно будет создать собственное на JAVA EE для себя.Для начала я установлю" +
                                " себе на комп Composer.Затем тупо загружу JAVA EE и запущу. ",
                        "23.10.2021",
                        "Да")
        );
        tasks.add(
                new Task( 2L,
                        "Убраться дома и закупить продукты",
                        "-",
                        "25.10.1021",
                        "Да")

        );
        tasks.add(
                new Task(3L,
                        "Выполнить все домашние задания",
                        "-",
                        "25.10.1021",
                        "Нет")

        );
        tasks.add(
                new Task(4L,
                        "Записаться на качку",
                        "-",
                        "25.10.1021",
                        "Нет")
        );
        tasks.add(
                new Task(5L,
                        "Учить Италянский",
                        "-",
                        "25.10.1021",
                        "Нет")
        );
    }

    public static ArrayList<Task> getTask() {
        for (Task task:tasks) {
            if( task.getId().equals(id)){
                return task;
            }
        }
        return null;
    }
    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }
    public  static ArrayList<Task> getTaskById(Long id){
        for (Task task:tasks) {
            if(task.getId()==id){
                return task;
            }
        }
        return null;
    }

    public static ArrayList<Task> getAllTasks(){
        return tasks;
    }
    public static void deleteTask(int id){
        for (int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getId() == id){
                tasks.remove(i);
                break;
            }
        }
    }
}
