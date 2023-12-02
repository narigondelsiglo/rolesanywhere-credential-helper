FROM debian:stable-slim
EXPOSE 9911
ADD --chmod=777 https://rolesanywhere.amazonaws.com/releases/1.1.1/X86_64/Linux/aws_signing_helper /aws_signing_helper
CMD [ "/aws_signing_helper", "serve", \
    "--trust-anchor-arn $TRUST_ANCHOR_ARN", \
    "--profile-arn $PROFILE_ARN", \
    "--role-arn $ROLE_ARN", \
    "--certificate $CERTIFICATE_PATH", \
    "--private-key $PRIVATE_KEY_PATH" ]
