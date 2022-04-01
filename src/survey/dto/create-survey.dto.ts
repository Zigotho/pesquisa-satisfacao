import { Prisma } from '@prisma/client';
import { IsBoolean, IsNotEmpty, IsOptional, IsString } from 'class-validator';
import { Survey } from '../entities/survey.entity';

export class CreateSurveyDto extends Survey {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsString()
  @IsNotEmpty()
  description: string;

  @IsBoolean()
  is_active: boolean;

  @IsOptional()
  survey_questions?: Prisma.Survey_questionUncheckedCreateNestedManyWithoutSurveyInput;
}
