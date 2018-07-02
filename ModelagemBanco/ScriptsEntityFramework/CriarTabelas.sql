
CREATE SCHEMA IF NOT EXISTS dbo;

CREATE TABLE "dbo"."cidade"("idcidade" serial4 NOT NULL,"nome" varchar(100) NOT NULL DEFAULT '',"idestado" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.cidade" PRIMARY KEY ("idcidade"))
;

CREATE TABLE "dbo"."endereco"("idendereco" serial4 NOT NULL,"cep" varchar(8) NOT NULL DEFAULT '',"numero" varchar(20) NOT NULL DEFAULT '',"complemento" varchar(100) NOT NULL DEFAULT '',"logradouro" varchar(100) NOT NULL DEFAULT '',"idcidade" int4,"Pessoa_IdPessoa" int4,CONSTRAINT "PK_dbo.endereco" PRIMARY KEY ("idendereco"))
;

CREATE TABLE "dbo"."estabelecimento"("idestabelecimento" serial4 NOT NULL,"nome" varchar(100) NOT NULL DEFAULT '',"unidade" varchar(100) NOT NULL DEFAULT '',"logo" varchar(8000),"idendereco" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.estabelecimento" PRIMARY KEY ("idestabelecimento"))
;

CREATE TABLE "dbo"."compra"("idcompra" serial4 NOT NULL,"datacompra" timestamp NOT NULL DEFAULT '-infinity',"valortotal" float8 NOT NULL DEFAULT 0,"idconsumidor" int4 NOT NULL DEFAULT 0,"idestabelecimento" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.compra" PRIMARY KEY ("idcompra"))
;

CREATE TABLE "dbo"."consumidor"("idconsumidor" serial4 NOT NULL,"datacadastro" timestamp NOT NULL DEFAULT '-infinity',"admnistrador" int4 NOT NULL DEFAULT 0,"login" varchar(40) NOT NULL DEFAULT '',"senha" varchar(200) NOT NULL DEFAULT '',"nivel" float8 NOT NULL DEFAULT 0,"idpessoa" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.consumidor" PRIMARY KEY ("idconsumidor"))
;

CREATE TABLE "dbo"."listacompra"("idlistacompra" serial4 NOT NULL,"nome" varchar(100) NOT NULL DEFAULT '',"dataultimamodificacao" timestamp NOT NULL DEFAULT '-infinity',"idconsumidor" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.listacompra" PRIMARY KEY ("idlistacompra"))
;

CREATE TABLE "dbo"."itemlistacompra"("iditemlistacompra" serial4 NOT NULL,"quantidade" int4 NOT NULL DEFAULT 0,"idlistacompra" int4 NOT NULL DEFAULT 0,"idproduto" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.itemlistacompra" PRIMARY KEY ("iditemlistacompra"))
;

CREATE TABLE "dbo"."produto"("idproduto" serial4 NOT NULL,"unidade" int4 NOT NULL DEFAULT 0,"nome" varchar(100) NOT NULL DEFAULT '',"valido" float8 NOT NULL DEFAULT 0,"idmarca" int4 NOT NULL DEFAULT 0,"idmedida" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.produto" PRIMARY KEY ("idproduto"))
;

CREATE TABLE "dbo"."estabelecimentoproduto"("idestabelecimentoproduto" serial4 NOT NULL,"preco" float8 NOT NULL DEFAULT 0,"idestabelecimento" int4 NOT NULL DEFAULT 0,"idproduto" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.estabelecimentoproduto" PRIMARY KEY ("idestabelecimentoproduto"))
;

CREATE TABLE "dbo"."itemcompra"("iditemcompra" serial4 NOT NULL,"quantidade" varchar(10) NOT NULL DEFAULT '',"preco" float8 NOT NULL DEFAULT 0,"valido" int4 NOT NULL DEFAULT 0,"idcompra" int4 NOT NULL DEFAULT 0,"idproduto" int4 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.itemcompra" PRIMARY KEY ("iditemcompra"))
;

CREATE TABLE "dbo"."marca"("idmarca" serial4 NOT NULL,"nome" varchar(50) NOT NULL DEFAULT '',CONSTRAINT "PK_dbo.marca" PRIMARY KEY ("idmarca"))
;

CREATE TABLE "dbo"."medida"("idmedida" serial4 NOT NULL,"descricao" varchar(20) NOT NULL DEFAULT '',"tipomedida" float8 NOT NULL DEFAULT 0,CONSTRAINT "PK_dbo.medida" PRIMARY KEY ("idmedida"))
;

CREATE TABLE "dbo"."pessoa"("idpessoa" serial4 NOT NULL,"IdEndereco" int4 NOT NULL DEFAULT 0,"nome" varchar(100) NOT NULL DEFAULT '',"sobrenome" varchar(100),"email" varchar(100) NOT NULL DEFAULT '',"datanascimento" timestamp NOT NULL DEFAULT '-infinity',"idendereco" int4,CONSTRAINT "PK_dbo.pessoa" PRIMARY KEY ("idpessoa"))
;

CREATE TABLE "dbo"."estado"("idestado" serial4 NOT NULL,"nome" varchar(100) NOT NULL DEFAULT '',CONSTRAINT "PK_dbo.estado" PRIMARY KEY ("idestado"))
;

CREATE INDEX "cidade_IX_idestado" ON "dbo"."cidade" ("idestado")
;

CREATE INDEX "endereco_IX_idcidade" ON "dbo"."endereco" ("idcidade")
;

CREATE INDEX "endereco_IX_Pessoa_IdPessoa" ON "dbo"."endereco" ("Pessoa_IdPessoa")
;

CREATE INDEX "estabelecimento_IX_idendereco" ON "dbo"."estabelecimento" ("idendereco")
;

CREATE INDEX "compra_IX_idconsumidor" ON "dbo"."compra" ("idconsumidor")
;

CREATE INDEX "compra_IX_idestabelecimento" ON "dbo"."compra" ("idestabelecimento")
;

CREATE INDEX "consumidor_IX_idpessoa" ON "dbo"."consumidor" ("idpessoa")
;

CREATE INDEX "listacompra_IX_idconsumidor" ON "dbo"."listacompra" ("idconsumidor")
;

CREATE INDEX "itemlistacompra_IX_idlistacompra" ON "dbo"."itemlistacompra" ("idlistacompra")
;

CREATE INDEX "itemlistacompra_IX_idproduto" ON "dbo"."itemlistacompra" ("idproduto")
;

CREATE INDEX "produto_IX_idmarca" ON "dbo"."produto" ("idmarca")
;

CREATE INDEX "produto_IX_idmedida" ON "dbo"."produto" ("idmedida")
;

CREATE INDEX "estabelecimentoproduto_IX_idestabelecimento" ON "dbo"."estabelecimentoproduto" ("idestabelecimento")
;

CREATE INDEX "estabelecimentoproduto_IX_idproduto" ON "dbo"."estabelecimentoproduto" ("idproduto")
;

CREATE INDEX "itemcompra_IX_idcompra" ON "dbo"."itemcompra" ("idcompra")
;

CREATE INDEX "itemcompra_IX_idproduto" ON "dbo"."itemcompra" ("idproduto")
;

CREATE INDEX "pessoa_IX_idendereco" ON "dbo"."pessoa" ("idendereco")
;

ALTER TABLE "dbo"."cidade" ADD CONSTRAINT "FK_dbo.cidade_dbo.estado_idestado" FOREIGN KEY ("idestado") REFERENCES "dbo"."estado" ("idestado") ON DELETE CASCADE
;

ALTER TABLE "dbo"."endereco" ADD CONSTRAINT "FK_dbo.endereco_dbo.cidade_idcidade" FOREIGN KEY ("idcidade") REFERENCES "dbo"."cidade" ("idcidade")
;

ALTER TABLE "dbo"."endereco" ADD CONSTRAINT "FK_dbo.endereco_dbo.pessoa_Pessoa_IdPessoa" FOREIGN KEY ("Pessoa_IdPessoa") REFERENCES "dbo"."pessoa" ("idpessoa")
;

ALTER TABLE "dbo"."estabelecimento" ADD CONSTRAINT "FK_dbo.estabelecimento_dbo.endereco_idendereco" FOREIGN KEY ("idendereco") REFERENCES "dbo"."endereco" ("idendereco")
;

ALTER TABLE "dbo"."compra" ADD CONSTRAINT "FK_dbo.compra_dbo.consumidor_idconsumidor" FOREIGN KEY ("idconsumidor") REFERENCES "dbo"."consumidor" ("idconsumidor") ON DELETE CASCADE
;

ALTER TABLE "dbo"."compra" ADD CONSTRAINT "FK_dbo.compra_dbo.estabelecimento_idestabelecimento" FOREIGN KEY ("idestabelecimento") REFERENCES "dbo"."estabelecimento" ("idestabelecimento") ON DELETE CASCADE
;

ALTER TABLE "dbo"."consumidor" ADD CONSTRAINT "FK_dbo.consumidor_dbo.pessoa_idpessoa" FOREIGN KEY ("idpessoa") REFERENCES "dbo"."pessoa" ("idpessoa")
;

ALTER TABLE "dbo"."listacompra" ADD CONSTRAINT "FK_dbo.listacompra_dbo.consumidor_idconsumidor" FOREIGN KEY ("idconsumidor") REFERENCES "dbo"."consumidor" ("idconsumidor") ON DELETE CASCADE
;

ALTER TABLE "dbo"."itemlistacompra" ADD CONSTRAINT "FK_dbo.itemlistacompra_dbo.listacompra_idlistacompra" FOREIGN KEY ("idlistacompra") REFERENCES "dbo"."listacompra" ("idlistacompra") ON DELETE CASCADE
;

ALTER TABLE "dbo"."itemlistacompra" ADD CONSTRAINT "FK_dbo.itemlistacompra_dbo.produto_idproduto" FOREIGN KEY ("idproduto") REFERENCES "dbo"."produto" ("idproduto") ON DELETE CASCADE
;

ALTER TABLE "dbo"."produto" ADD CONSTRAINT "FK_dbo.produto_dbo.marca_idmarca" FOREIGN KEY ("idmarca") REFERENCES "dbo"."marca" ("idmarca") ON DELETE CASCADE
;

ALTER TABLE "dbo"."produto" ADD CONSTRAINT "FK_dbo.produto_dbo.medida_idmedida" FOREIGN KEY ("idmedida") REFERENCES "dbo"."medida" ("idmedida") ON DELETE CASCADE
;

ALTER TABLE "dbo"."estabelecimentoproduto" ADD CONSTRAINT "FK_dbo.estabelecimentoproduto_dbo.estabelecimento_idestabelecimento" FOREIGN KEY ("idestabelecimento") REFERENCES "dbo"."estabelecimento" ("idestabelecimento") ON DELETE CASCADE
;

ALTER TABLE "dbo"."estabelecimentoproduto" ADD CONSTRAINT "FK_dbo.estabelecimentoproduto_dbo.produto_idproduto" FOREIGN KEY ("idproduto") REFERENCES "dbo"."produto" ("idproduto") ON DELETE CASCADE
;

ALTER TABLE "dbo"."itemcompra" ADD CONSTRAINT "FK_dbo.itemcompra_dbo.compra_idcompra" FOREIGN KEY ("idcompra") REFERENCES "dbo"."compra" ("idcompra") ON DELETE CASCADE
;

ALTER TABLE "dbo"."itemcompra" ADD CONSTRAINT "FK_dbo.itemcompra_dbo.produto_idproduto" FOREIGN KEY ("idproduto") REFERENCES "dbo"."produto" ("idproduto") ON DELETE CASCADE
;

ALTER TABLE "dbo"."pessoa" ADD CONSTRAINT "FK_dbo.pessoa_dbo.endereco_idendereco" FOREIGN KEY ("idendereco") REFERENCES "dbo"."endereco" ("idendereco")
;

CREATE TABLE "dbo"."__MigrationHistory"("MigrationId" varchar(150) NOT NULL DEFAULT '',"ContextKey" varchar(300) NOT NULL DEFAULT '',"Model" bytea NOT NULL DEFAULT '',"ProductVersion" varchar(32) NOT NULL DEFAULT '',CONSTRAINT "PK_dbo.__MigrationHistory" PRIMARY KEY ("MigrationId","ContextKey"))
;

INSERT INTO "dbo"."__MigrationHistory"("MigrationId","ContextKey","Model","ProductVersion") VALUES (E'201807012228483_AutomaticMigration',E'CestaCompra.Data.Migrations.Configuration',decode('H4sIAAAAAAAEAOVdzY7cuBG+B8g7NPoYbKZt7ybYNWYSeMd2YGRtTzy2kZshtzhjIWqpV1IbNoI8WQ55pLxCqBYl8aeKLFJ/3Q588bTIIln8qlgsFov//fd/Lv/8ZZeuPrOiTPLsav3w4sF6xbJtHifZ/dX6UN39/sf1n//0299cPot3X1bv23Lf1+V4zay8Wn+qqv3jzabcfmK7qLzYJdsiL/O76mKb7zZRnG8ePXjw0+bhww3jJNac1mp1+eaQVcmOHf/gf17n2Zbtq0OUvsxjlpbid/7l9kh19SrasXIfbdnV+pqVVXSd7/ZFdPE0qqL16kmaRLwftyy9W6+iLMurqOK9fPyuZLdVkWf3t3v+Q5S+/bpnvNxdlJZM9P5xX5w6kAeP6oFs+ootqe2hrPKdJ8GH3wvObPTqQfxdd5zjvHvGeVx9rUd95B9nXRJHMR+63tTj67Soi5nMvWjm46Kp+d1K//5dBwmOnPofL3JIq0PBrjJ2qIoo/W51c/iYJtu/sq9v83+w7Co7pKncTd5R/k35gf90U+R7VlRf37A70fkXcdv9jVp7o1fvKhs1m0G+yKrvH61Xr3hHoo8p6xAhMeS2ygv2F5axIqpYfBNVFSuymhI78tTog9biq3zXtcYhyGVpvXoZffmFZffVJy5lD7j0PE++sLj9RfTgXZZw0eOVquLAgB5qrb6KPif3xw5r7T/LYlawbV6uV29YeixRfkr2jYxctF8/tGx5XuS7N3kqVRSfPryNintW8aHk8Pfb/FBsfTrG4RPnYK8ExbZE3yflQ9di2yP1a9tfuT+Xm14QrOLRDi5EQNq6C4tIPwR/IenrziUm12xvkZIfR5ERXTIPO1bkllYfjSOa+kg5HlK242yxtT2WXtAa/yW/L7hwHKzjnlwntcpmmELSxR9TWD4K6SNL2TYRkwN1Ty3zoRcUqZ9IGVODYgV9VekNK8s8svOzLQPws/mE81N8H6ZQdeYG6FWVxNLqVR9QgJbVSXxjNonWKq8tm16zKj2buuP/JbVK1m5HRML2VvPtgzHzkokDljB0B1LM2wjr9NfYys7QJi6tGKim+df4QNPWoqiN+7QaLk2OVYNmh6xBmxkP2rEdf1p6xya6H7BjEzXn0o41a9Q2+S/sbbLz1zzvozQv3vJ+pR2pnDN0kO3EEX7YJXFe2BSMXMrQLf1HcwtllJjCigrWgkh3MfGk9vlFxXY2rd1//9ACo++q8dHQDmaJgYqgn9sQZdDWXlwh9MMIUQp97VkVQxRHZdVvn4JVw5N4l2QJJxURxuC0b5LMYuD8MIlVdcuyT5F19zxJs6+Sz2xMbeq01aiqFLHQAGVL7dwvHB5R2WocoIfHAtZuwiWMviLFRtyHSlTNnajxEVD0eolBu1FpvCE6VKq+sBJVBuKvRZXq3/bus56ad2mV7CI+icldso22UYAWD7XLgkVVlwSHRHuYPFmpTD9i98jtKeVVCwgpBtpCWNlBVpFGOESsNRILi7YxIH/xNkjMJeJ/O0S8HOWgzWstnBaquqRRYE1eGS1eCr2drize7dbB4OpyW27QYtn1x1+iRNWFJakbgL8EdVXnkhzNSRq2IVhmhX0fpUmcj2aaD/fzAYJkL0n16+ni57XoOpSYXQkgcg14Ggb10Vfbeqgsl0EQ2u+XUbGFO9tSFCX6LiofDF2qfvVV+C9ZzAXZ3h9RBOjQ8Qveo+bzmOdxA3Q8TOm0TucGrAAYpbkWhBs5DmNspTrvqYnjSMh12DKGrTXaSkEcyygGWK/VQ3c1J7OhGbaXWX4bA1pTUxhTQWJvNciG7sBodgvlfATatcAnKGNtr7yMKkv3RhFnYYf4S/Kx4sJCLDrvL7+i4ok4Gf8wcYSbAAp8sEA0SHVLGTZXwyAoTM8ADB5rLg1C0f0AFIqasx0ZsnJbJJKnebYw07fJPldHO9h4pIHatatBYa1uesJcVeJoKcBTday5tKNKdD/ATyVqzoVreoj4KXqqbvOPBcvGadre0rNdlKTzD7BG7quo1AJLpz/l8jzlNY/MsXPgUeIZBU0ojFH7ZLpetO+DfS9xsK8lPgXfShzsS3FvSM7upNlxzwGJLqHdcTJEBLwBRYHhE47gbXLshiYs7V0LdVT868px8aJhrHzNgPOX4y7Zc6TxLlytf2cwCyfbDbUn214CUYk+uLh4qI9ZGp190MhBPNZJ16l831fFZ07ngitCR2KGpHtV+g/Xuty+zp6ylFVs9WTb3D+95qsBeGOS9ySMkbYTV2ywpOPXfsTG+TWdraSYBNLkLcJcog8WFS1Ph6wkyIi720OsPUPo0bZPeSJavngywXAxzcB44+CtbxNpZDF1ovoQbaKNOBRV1RGmNZBYblkPn4yaAHybhKFZUDiYbWeCNtUFh40LOSB2DsnGK8TH19MUXsFTYlLj0nGOSDu1HodNmtNI4pNwNJ0Ao7BwCKpx4hDIkUygcxFNbZeOIgTZkhN2JeYGwkoZQrTwboy4MTF9J1j/LOHylN2CY/QWN41r/EMGT92QkfZi/sJyjjsw+Pabi3OETUAw+74NI9+te9y3nskDdkijO5mEW92Fi6WePcLpysH10SAPka8iGqaIFc8cing4FZHLd2UVItjzp0IpXkJkGo8iV39VlGSs6Fesin2pjs7on58C/ux3JRMu7VL4UvWh12RvWaXlhekdmBovDdap9XuMGRTQbEgGDV1cTVJ6CQfFVpuao4KDocz6/aoD0EBv0ep0FDPSIGS7aqJTMoxSg5rr8opOsTNADUpY6KZj3nCCxNBQaMzW4RJHKrZ3Bgk4sMaoLTY9ZnU4JMLgs1CXJpvho2eIyzHGVeBQSNInpph2OZ6kUkgaKF3DuQ8nup7LamFDp9OqX4kOlnRQHSSBAdhlQJMPlNMKn/MKaTQW8fQ5oJD5Y7nR780j64Uuk1Hk0wjv8whpgA6t5n0AQZuNAOZRQ7gBwQs4eBhy9CCLKUkxDzlrwBubjufdMMi8Br1HIacLk/BW9yJJjaC3LIKEXwsohkXecmJAPDPQxJso2fAhgaILRxJlKHzZygs3fCxHAYO4MQs0tOBZkxUW1z7Bue/uM8GbLxFB4qXDhy3sPMu4AW89xV8fOnLVQS8PHYnSHWwKOOTA6Yn38sWPtPzPIxt6gBuAEpt3neRf9zWsMW+6zAEk7tWbAUD8ockCh6Od6Gon2b1Ex/o0rCBsL3x2FqRNBUEy5t9KIH5ynB90a9fhUw/izClYr1YdQnOX+znM6YPzc48TtFUIt/SsyhYPhlPHYM7zYA/GHNpFjV4FJAl3ohPc6E6nC8FvriEKilhGh93G0HYe7+7b5aZ5hkT8cLlB3iu5fBnt90l2L71fIn5Z3YrHS35/6/+ux66hsdmWwPMeXW+7lqq8iO6Z9rVWNDF7nhRlVceOf4zqkObreAcUU/z7iGewbUxx4ZuT1foL2+L1/0UVPdgdptFz8DkfVC3ux/ExEytGxVX9eEyURoURkd6i6zpPD7us+TWJtwjmcEpNpLlMpbleYlK43Gij0Fm1MXhlnNmonCfNi0VHe8wMRoUwN3hVfHZ6tafOD0PVIU7t+MCETGZb/+Axw+K1CGWOxW8evcilxx+U3sgf6PTk9xxkcqn0++lg0GlW+UDRToyCSBcFCzB1E0XDp8uCscCMrEgwCl0GKZnIIfNWaU3WfA1UpwQn1Onns9SANChLDVLRstSIDYC21CDbApySnJ5cphXz3/2pyRnKZWqf69+r5vcTmnHLPtVr1jE6pJnHK9tmv9/Q6gjAvQcOFHS5qA0cdF/oFLWE1DLJKN5JX7xUSJ2YWtMh9U90GiLNtEyjbH7yUKpNzmhFqzY/nQy07eeVHti2ECKA21obR7fiFVXhndaf/PXS8HUQSfiri8rhWGQnFzkZUOgO50HAcBAjgMNJAQeI4TpXQZLwz4FAkXM0yUR/lX4/mQnFjyM8JhIhQphAtCY+cd3hhDphe+yECKc1ll06XDO0ebE0eycxXUQLQgU5sR9zzxQOJCoh8g4KgZm2kQpA3Y3pP9hjroMFtfxYCn6Qbg9T67hGn0uZjzH3Z60rsFAHD/CAJAi4QerhkBEBESpadlCUhI3Oyftb0SgMnzkBaVAmBalomRURq6FNCxjBYaMk5TtTDO3+ZzotOYOZTKziv+M9W8qyw075fAw7kAbFrkMqWsw6cRCoWXXg8aCdEuyjx5+ftlEbbtpJmb0Uj0H/M52WyN0l02HNT36bUDkRl777zKRvJ4Nl9NDW09Q0aRBNS6ii3ZTUl+jGdIQX6dNfU9Rzafggr7s8QTiu68pSD+Xqw3VdGuD7ESZvRjlpPd5Ma2n4d07EEZA753/QaO3gdZ5xA7i+UfiirJOHdYnDKIPXwxK8EYLdLqE5DZUqHu5BYFbsN0foyAlynXsiyH5vhtzXUEco3tvBcLBepKH7C9V6nq5BgOGE+zELct27y75AGeoQnRAw1MtD3o4mk0SYXwlaALwuAtHXhYHn/L7LmNfdqdBRDPS1zY+8rsP+iOuqTo00Lb6fPDe+/vVxEKVdcvj2kARcICN5Tj/YFjivtQ28IeZh8/gEiwSsY+BlOK/Vy9/vO898U7QFVHysGT9RTYBf+jvfWW8HIr0tYj8zbUsSD0YBNiqEvOfYx/ntOb9qx3yndjzwjTep0uMVrlkVRUeYVuU2I31evdznoTOr3Nc8x6lFL3J6bEOt+nrYFvSENbflhuq3sOU0Lq46T0mksrTTEEiw4BuuS3kN3R30Fn2vU54xXJrY0AcjBLjZSwrw7UrTw3iBiUCv7i4xFZTu+SJlbB/rCPPt478muK7Jq8KZOKyH+6rH2mOONdc+DkasytBZPzOHof36+fkhAb+FTnf9WSwDwr1+u//shG0F1w37E4DwcHjo1+4pZ9+YARBy9j3i4i9IYY/+hR+BB1oASxyBO3gwfGFRsxQ4r5x3JWkXyyGFDKUi8BI9eiSL71oBZVqgLxEjhW+459TIvaAX6aJvxC/d313uBZH3QEnIcBxanV7hOKRS5GDQEyE0RdYr3vfPnPPF1frV/r78Ne1/eRllyR2fkuYVvfVPF3+8eLRePUmTqGxSX4ikDo/1bMikLA8Pv6+zPLB4t9Gr++eKqKmUZay88icFcSmw0JI7kF4CxANYXC8B9jWbDLJJVv0ghM722J/nI5jyA5+fo2L7KSrM5/88afbSKPfcSHz9givNL1frfx5rPV69+PuHtuJ3q9cFR9Hj1YPVvxyt09+ThNPVEycR37K7p5Ep9tlUE3nM1IDP44/+yBB5G3Caj/yhoWRwGBd1cjaHsfEMSSIJz01FDM+Ux3GN5d+zD1p9ele8XmrFn9agCpjdYibJGbQ1Pie92d3zG10wrCLx4wOVKAWVmFajKXlRdQo1D/kyyCs1uJcnrdRS+MRUiJNTVzTtVBzoHPO7vTctOXFFQ+suzaPKf5FQvXX+6rGr7IEFb9knWx4ShWmwiTzcRMYnnu+RglF4oibBaZdaYyhS1awacr/9tWCdUwNXgz/4a1aRY8NmIfkTFUk3BorlPsxaaCtOAX/87WMi/i0HrxQBUKqfm22AZOEYKl5L6G8yYKzBClTQOE7sKcAxSEwJHvkW9wB1Z4E7aWal2gOX5r0cv+KnipqaU0ALDHqiQgqJWaFACWTG2BDS9hFB+JlCh7UpAQYubbs+kNELTsd6A8G8k+Lt/Bo/VpzEsUUI0g/chQ8AOkZpStzv5f1oMLyW3Eqcjf7E4r59VuVhC/IyazGsChdBqqpNA42EYPvg2zUNoNfuiagGg9QpgAaWtLk3JX9woZjOQCCxCpmDyHM4BBYCK/Poro0+Q8uopyJyshYPnUC3dqGHianGLhJ1QLB1ARfE2DMih2ScmLUrpVMhE6a43kV6lfHdC3KaleF+hQnPBwaeVRnvVXsYx9ADGTRjWF+qT8/phDHR8uI5GBehvzlCePDb9b67hiXPt9L5JPKSfGxRWrvgqyJKzGw0N0WSbZN9lKp914phnnk0xKcjq395yvY1zrNKH+PQFjvCGkxdXPB4/J3y4C74ppcKBennqR5rV/phJPWAXvWeBky2XOp+Rz1eoLKnMvZveAZskd8oHjaxE0HMuD4m9cb4NgnU/KfccZ+NDDZ37uyA1mdAHDEPC7o4wf4i6BG4mUCIJaDAO9YVmQSS7ldoAiKC/BZXUiKT8I4sh1LY3ftMf4FWmXxktv9P0Og3+YgLfD70WTow02qsJn3BjTxjwZt95UUW3YlNOy/rapRVdqQ258XP6WuqpSA0v0byBtGyWqhd7CDXfD99L2Un+nHmxC+zgMcDviPBBstGTz6Z8IKMH0jR9uZEC3QOIcFFcbg3eBE/fauAwVLl009ipoQM2uACXofzWKyW9TQss2z5exgWXru0TDzoNsnHx+3wl6tXhRpwip+m2eD7+a5tt6XpygV7B8K3xRkwYGbaGTxztun39rePpRB8pgTP6kOGgLdXHW9zFhCc23kJeUt/5qck53VAgmT1IbrfTsA9PTeslnc/ewHsJN3NI9sv1sP+cMCesTkTCNJl7Ro9fdBgq+YE40DmNmq8wEfIjzTHiqTkBbLJdWyKczzbskMNRhpx2QEf96LHlvktMj4BS3h7o+PlmZqoqLNitKRCBm5EXikFY+tVH6KmzWGTlOhqHX+sMdYEuSGpd3TavQYxqPefIPpoVhijBX3dMhsykjRC7TmSZBhME2aVybT2AQeIafC1DJN2bwcD9KUco2Ab6E12vR3Fj2U0pL63BLRku/qpN2W4zYzmjBJQk64bp3qznd/QaK77AjWDXc5yYA9vDStIQCK1L/JRGshcF1+JLBUHP0YT7csGAHX47oZBWDipTcptdn2INHypwcCBWMNNGLTJGSEUwOH5EAhibNJjyyQDAc9qbjokJHglldJ0KRg1DC7V3Sj6n4wFC7IOpXrPMBWtpdgjDBF7/88cKSU+FvX4yIO2+RqQ8EepuvL74OFbn7ozeUCO4xw6FPupiETD+DaYJdQX3ABZCIg5tO+SZcw7PQju6Cyc3A2i60djX9cAmW3ISRR0XieNCxnIybAHeHALFjNLgBboeFM0DEmkEGkaVbfoT5dYxzrdjM8xXDWeBRipJeBF6axi5zSv2iOBF0GMGTI0YfNYxgZGIwABGvLosBiBuYaHPrTjXgCnhex8i57xtAwwxbYz73CbDfQpyrwiJcgmDBF4GcUcpONQN6yzw6zCoKES7Nn5TFnyEhU+VIJ1Rjlim8Qam3L4+AsQTjtrWkkewLwQNuhPHlg2qhPJ9dQbVS1PP4Bv3GEPuuy1CQEdxwG7d8vQjPz23bfLTeOqED/wP4089pebN4esvrve/PWUlcl9T6J+dSFjW8VN3ZV5kd3lrb9c61FbRLt3/ZJxhkRV9KSokrtoW/HPWw6BJLtfr95H6aFm4+4ji19krw/V/lDxIbPdx/SrzIza625r/3Jj9Pny9b7+qxxjCO/rTDJRxV5nPx+SNO76/Ry4I46QqN354jJ7PZdVfan9/mtH6VWeEQkJ9nWnEG/Zbp9yYuXr7Db6zEL69q5kv7D7aPv1RrxOgBNxT4TK9sunSXRfRLtS0Ojr8z85huPdlz/9D6lGySE1CAEA', 'base64'),E'6.1.3-40302')
