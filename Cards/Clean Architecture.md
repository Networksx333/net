## Base info about Clean Architecture

- Entities: Basic business objects.
- Use Cases: Specific operations on entities.
- Interface Adapters: Convert data from use cases to a UI-friendly format and vice versa.
- Frameworks and Drivers: External systems and tools, e.g. databases, web frameworks.

```
my_project/
├── entities/
│   └── user.h
├── use_cases/
│   └── create_user.h
├── interface_adapters/
│   └── user_controller.h
├── frameworks_drivers/
│   └── in_memory_user_repository.h
└── main.cpp
```