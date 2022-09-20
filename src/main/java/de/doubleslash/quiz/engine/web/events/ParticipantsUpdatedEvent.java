package de.doubleslash.quiz.engine.web.events;

import de.doubleslash.quiz.engine.dto.Participant;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ParticipantsUpdatedEvent implements QuizEvent {

  private List<Participant> participants;
}