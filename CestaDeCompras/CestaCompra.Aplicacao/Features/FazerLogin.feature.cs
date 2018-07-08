﻿// ------------------------------------------------------------------------------
//  <auto-generated>
//      This code was generated by SpecFlow (http://www.specflow.org/).
//      SpecFlow Version:2.3.2.0
//      SpecFlow Generator Version:2.3.0.0
// 
//      Changes to this file may cause incorrect behavior and will be lost if
//      the code is regenerated.
//  </auto-generated>
// ------------------------------------------------------------------------------
#region Designer generated code
#pragma warning disable
namespace CestaCompra.Aplicacao.Features
{
    using TechTalk.SpecFlow;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("TechTalk.SpecFlow", "2.3.2.0")]
    [System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [NUnit.Framework.TestFixtureAttribute()]
    [NUnit.Framework.DescriptionAttribute("FazerLogin")]
    public partial class FazerLoginFeature
    {
        
        private TechTalk.SpecFlow.ITestRunner testRunner;
        
#line 1 "FazerLogin.feature"
#line hidden
        
        [NUnit.Framework.OneTimeSetUpAttribute()]
        public virtual void FeatureSetup()
        {
            testRunner = TechTalk.SpecFlow.TestRunnerManager.GetTestRunner();
            TechTalk.SpecFlow.FeatureInfo featureInfo = new TechTalk.SpecFlow.FeatureInfo(new System.Globalization.CultureInfo("pt-br"), "FazerLogin", null, ProgrammingLanguage.CSharp, ((string[])(null)));
            testRunner.OnFeatureStart(featureInfo);
        }
        
        [NUnit.Framework.OneTimeTearDownAttribute()]
        public virtual void FeatureTearDown()
        {
            testRunner.OnFeatureEnd();
            testRunner = null;
        }
        
        [NUnit.Framework.SetUpAttribute()]
        public virtual void TestInitialize()
        {
        }
        
        [NUnit.Framework.TearDownAttribute()]
        public virtual void ScenarioTearDown()
        {
            testRunner.OnScenarioEnd();
        }
        
        public virtual void ScenarioSetup(TechTalk.SpecFlow.ScenarioInfo scenarioInfo)
        {
            testRunner.OnScenarioStart(scenarioInfo);
        }
        
        public virtual void ScenarioCleanup()
        {
            testRunner.CollectScenarioErrors();
        }
        
        public virtual void FeatureBackground()
        {
#line 5
#line 6
testRunner.Given("que eu consumidor acesso a página de entrada do sistema", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Dado ");
#line 7
testRunner.And("eu digito o  meu <login>", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "E ");
#line 8
testRunner.And("eu digito a  minha <senha>", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "E ");
#line hidden
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("Sucesso no Login")]
        [NUnit.Framework.CategoryAttribute("mytag")]
        [NUnit.Framework.TestCaseAttribute("educouto", "\'123\'", null)]
        [NUnit.Framework.TestCaseAttribute("gabriel", "\'123\'", null)]
        [NUnit.Framework.TestCaseAttribute("rodrigo", "\'ddavid_11\"", null)]
        public virtual void SucessoNoLogin(string login, string senha, string[] exampleTags)
        {
            string[] @__tags = new string[] {
                    "mytag"};
            if ((exampleTags != null))
            {
                @__tags = System.Linq.Enumerable.ToArray(System.Linq.Enumerable.Concat(@__tags, exampleTags));
            }
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("Sucesso no Login", @__tags);
#line 10
this.ScenarioSetup(scenarioInfo);
#line 5
this.FeatureBackground();
#line 11
testRunner.Given(string.Format("{0}", login), ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Dado ");
#line 12
testRunner.And(string.Format("a {0}", senha), ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "E ");
#line 13
testRunner.When("eu pressiono o botão entrar", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Quando ");
#line 14
testRunner.Then("eu acesso a página do menu principal.", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Então ");
#line hidden
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("Insucesso no Login")]
        public virtual void InsucessoNoLogin()
        {
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("Insucesso no Login", ((string[])(null)));
#line 22
this.ScenarioSetup(scenarioInfo);
#line 5
this.FeatureBackground();
#line 23
testRunner.Given("o <login> ou a <senha> esteja errada", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Dado ");
#line 24
testRunner.When("Eu pressiono o botão entrar", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Quando ");
#line 25
testRunner.Then("o sistema informa dados incorretos", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Então ");
#line hidden
            this.ScenarioCleanup();
        }
    }
}
#pragma warning restore
#endregion
