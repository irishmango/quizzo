# Quizzo – Gamified Quiz App

Quizzo is a stylish, mobile-first Flutter app that delivers an engaging quiz experience with gamification elements like achievements, XP tracking, and streaks. Built with a clean modular structure and dynamic Firestore-driven data.

## Features

- Take quizzes from multiple categories  
- Unlock achievements based on skill, progress, and fun challenges  
- Track stats: XP, correct streaks, daily streaks, category breakdowns  
- Playful retro-styled UI with custom typography and themes  
- Structured Firestore integration via `DatabaseRepository`  

## Tech Stack

- **Flutter** & **Dart**  
- **Firestore** (read-only mode currently)  
- **Provider** for state separation  
- **Modular widgets** with `StatelessWidget`/`StatefulWidget` patterns  
- **Anaheim Google font** and a fully custom color theme  


## 🧪 Highlights & Learning

- Created a reusable `CardTitleBar` component across screens  
- Integrated Firestore safely with an abstraction (`DatabaseRepository`)  
- Implemented custom logic for streaks, achievements, and quiz completion  
- Built pixel-perfect UI to spec using `Container`, `Column`, and `Theme` customization  

## 🚧 Future Work

- 🔐 User authentication  
- ⬆️ Save stats back to Firestore  
- 🧠 Quiz difficulty modes  
- 🎁 Daily rewards and XP multipliers  
