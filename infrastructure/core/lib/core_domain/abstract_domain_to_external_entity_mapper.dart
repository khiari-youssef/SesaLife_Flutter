abstract interface class AbstractDomainToExternalEntityMapper<Domain,
    External> {
  External toExternal(Domain domainData);
  Domain toDomain(External externalData);
}
