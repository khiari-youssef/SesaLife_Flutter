/*
 By definition, a use case is the entry point to the domain layer and should perform only the domain usecase without breaking the single responsibility principle
 * any domain logic outside this usecase context should be moved into a different usecase
 * if the usecase does not perform any domain logic and only fetches data then it is possible to juste directly call the repository from the UI bloc.
 * this protocol is implemented where no input is required
 @author : Youssef Khiari
 */
abstract interface class NoInputDomainUseCaseProtocol<O> {
  O execute();
}

/*
 By definition, a use case is the entry point to the domain layer and should perform only the domain usecase without breaking the single responsibility principle
 * any domain logic outside this usecase context should be moved into a different usecase
 * if the usecase does not perform any domain logic and only fetches data then it is possible to juste directly call the repository from the UI bloc.
 * this protocol is implemented where input is required.
 @author : Youssef Khiari
 */
abstract interface class DomainUseCaseProtocol<I, O> {
  O execute(I input);
}
